
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct i2c_demux_pinctrl_priv {int num_chan; TYPE_1__* chan; } ;
struct TYPE_2__ {int chgset; int parent_np; } ;


 int dev_attr_available_masters ;
 int dev_attr_current_master ;
 int device_remove_file (int *,int *) ;
 int i2c_demux_deactivate_master (struct i2c_demux_pinctrl_priv*) ;
 int of_changeset_destroy (int *) ;
 int of_node_put (int ) ;
 struct i2c_demux_pinctrl_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int i2c_demux_pinctrl_remove(struct platform_device *pdev)
{
 struct i2c_demux_pinctrl_priv *priv = platform_get_drvdata(pdev);
 int i;

 device_remove_file(&pdev->dev, &dev_attr_current_master);
 device_remove_file(&pdev->dev, &dev_attr_available_masters);

 i2c_demux_deactivate_master(priv);

 for (i = 0; i < priv->num_chan; i++) {
  of_node_put(priv->chan[i].parent_np);
  of_changeset_destroy(&priv->chan[i].chgset);
 }

 return 0;
}
