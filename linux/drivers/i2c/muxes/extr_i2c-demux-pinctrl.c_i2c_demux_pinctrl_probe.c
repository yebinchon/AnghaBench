
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct property {int length; void* value; void* name; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct i2c_demux_pinctrl_priv {int num_chan; TYPE_1__* chan; TYPE_2__* dev; int bus_name; } ;
struct device_node {int dummy; } ;
struct TYPE_9__ {int chgset; struct device_node* parent_np; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int chan ;
 int dev_attr_available_masters ;
 int dev_attr_current_master ;
 int dev_err (TYPE_2__*,char*,...) ;
 int device_create_file (TYPE_2__*,int *) ;
 int device_remove_file (TYPE_2__*,int *) ;
 struct property* devm_kcalloc (TYPE_2__*,int,int,int ) ;
 void* devm_kstrdup (TYPE_2__*,char*,int ) ;
 struct i2c_demux_pinctrl_priv* devm_kzalloc (TYPE_2__*,int ,int ) ;
 int i2c_demux_activate_master (struct i2c_demux_pinctrl_priv*,int ) ;
 int of_changeset_destroy (int *) ;
 int of_changeset_init (int *) ;
 int of_changeset_update_property (int *,struct device_node*,struct property*) ;
 int of_count_phandle_with_args (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int) ;
 int of_property_read_string (struct device_node*,char*,int *) ;
 int platform_set_drvdata (struct platform_device*,struct i2c_demux_pinctrl_priv*) ;
 int pm_runtime_no_callbacks (TYPE_2__*) ;
 int struct_size (struct i2c_demux_pinctrl_priv*,int ,int) ;

__attribute__((used)) static int i2c_demux_pinctrl_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct i2c_demux_pinctrl_priv *priv;
 struct property *props;
 int num_chan, i, j, err;

 num_chan = of_count_phandle_with_args(np, "i2c-parent", ((void*)0));
 if (num_chan < 2) {
  dev_err(&pdev->dev, "Need at least two I2C masters to switch\n");
  return -EINVAL;
 }

 priv = devm_kzalloc(&pdev->dev, struct_size(priv, chan, num_chan),
       GFP_KERNEL);

 props = devm_kcalloc(&pdev->dev, num_chan, sizeof(*props), GFP_KERNEL);

 if (!priv || !props)
  return -ENOMEM;

 err = of_property_read_string(np, "i2c-bus-name", &priv->bus_name);
 if (err)
  return err;

 for (i = 0; i < num_chan; i++) {
  struct device_node *adap_np;

  adap_np = of_parse_phandle(np, "i2c-parent", i);
  if (!adap_np) {
   dev_err(&pdev->dev, "can't get phandle for parent %d\n", i);
   err = -ENOENT;
   goto err_rollback;
  }
  priv->chan[i].parent_np = adap_np;

  props[i].name = devm_kstrdup(&pdev->dev, "status", GFP_KERNEL);
  props[i].value = devm_kstrdup(&pdev->dev, "ok", GFP_KERNEL);
  props[i].length = 3;

  of_changeset_init(&priv->chan[i].chgset);
  of_changeset_update_property(&priv->chan[i].chgset, adap_np, &props[i]);
 }

 priv->num_chan = num_chan;
 priv->dev = &pdev->dev;

 platform_set_drvdata(pdev, priv);

 pm_runtime_no_callbacks(&pdev->dev);


 i2c_demux_activate_master(priv, 0);

 err = device_create_file(&pdev->dev, &dev_attr_available_masters);
 if (err)
  goto err_rollback;

 err = device_create_file(&pdev->dev, &dev_attr_current_master);
 if (err)
  goto err_rollback_available;

 return 0;

err_rollback_available:
 device_remove_file(&pdev->dev, &dev_attr_available_masters);
err_rollback:
 for (j = 0; j < i; j++) {
  of_node_put(priv->chan[j].parent_np);
  of_changeset_destroy(&priv->chan[j].chgset);
 }

 return err;
}
