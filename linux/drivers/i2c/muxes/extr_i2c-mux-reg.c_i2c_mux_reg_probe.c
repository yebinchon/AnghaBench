
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_4__ {int reg_size; int n_values; int base_nr; unsigned int* classes; int * values; scalar_t__ idle_in_use; scalar_t__ reg; int parent; } ;
struct regmux {TYPE_2__ data; } ;
struct platform_device {int dev; } ;
struct i2c_mux_core {TYPE_1__* parent; int deselect; struct regmux* priv; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_3__ {int name; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int dev_dbg (int *,char*,int,int ) ;
 int dev_err (int *,char*) ;
 scalar_t__ dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 scalar_t__ devm_ioremap_resource (int *,struct resource*) ;
 struct regmux* devm_kzalloc (int *,int,int ) ;
 struct i2c_adapter* i2c_get_adapter (int ) ;
 int i2c_mux_add_adapter (struct i2c_mux_core*,int,int ,unsigned int) ;
 struct i2c_mux_core* i2c_mux_alloc (struct i2c_adapter*,int *,int,int ,int ,int ,int *) ;
 int i2c_mux_del_adapters (struct i2c_mux_core*) ;
 int i2c_mux_reg_deselect ;
 int i2c_mux_reg_probe_dt (struct regmux*,struct platform_device*) ;
 int i2c_mux_reg_select ;
 int i2c_put_adapter (struct i2c_adapter*) ;
 int memcpy (TYPE_2__*,scalar_t__,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct i2c_mux_core*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int i2c_mux_reg_probe(struct platform_device *pdev)
{
 struct i2c_mux_core *muxc;
 struct regmux *mux;
 struct i2c_adapter *parent;
 struct resource *res;
 unsigned int class;
 int i, ret, nr;

 mux = devm_kzalloc(&pdev->dev, sizeof(*mux), GFP_KERNEL);
 if (!mux)
  return -ENOMEM;

 if (dev_get_platdata(&pdev->dev)) {
  memcpy(&mux->data, dev_get_platdata(&pdev->dev),
   sizeof(mux->data));
 } else {
  ret = i2c_mux_reg_probe_dt(mux, pdev);
  if (ret == -EPROBE_DEFER)
   return ret;

  if (ret < 0) {
   dev_err(&pdev->dev, "Error parsing device tree");
   return ret;
  }
 }

 parent = i2c_get_adapter(mux->data.parent);
 if (!parent)
  return -EPROBE_DEFER;

 if (!mux->data.reg) {
  dev_info(&pdev->dev,
   "Register not set, using platform resource\n");
  res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
  mux->data.reg_size = resource_size(res);
  mux->data.reg = devm_ioremap_resource(&pdev->dev, res);
  if (IS_ERR(mux->data.reg)) {
   ret = PTR_ERR(mux->data.reg);
   goto err_put_parent;
  }
 }

 if (mux->data.reg_size != 4 && mux->data.reg_size != 2 &&
     mux->data.reg_size != 1) {
  dev_err(&pdev->dev, "Invalid register size\n");
  ret = -EINVAL;
  goto err_put_parent;
 }

 muxc = i2c_mux_alloc(parent, &pdev->dev, mux->data.n_values, 0, 0,
        i2c_mux_reg_select, ((void*)0));
 if (!muxc) {
  ret = -ENOMEM;
  goto err_put_parent;
 }
 muxc->priv = mux;

 platform_set_drvdata(pdev, muxc);

 if (mux->data.idle_in_use)
  muxc->deselect = i2c_mux_reg_deselect;

 for (i = 0; i < mux->data.n_values; i++) {
  nr = mux->data.base_nr ? (mux->data.base_nr + i) : 0;
  class = mux->data.classes ? mux->data.classes[i] : 0;

  ret = i2c_mux_add_adapter(muxc, nr, mux->data.values[i], class);
  if (ret)
   goto err_del_mux_adapters;
 }

 dev_dbg(&pdev->dev, "%d port mux on %s adapter\n",
   mux->data.n_values, muxc->parent->name);

 return 0;

err_del_mux_adapters:
 i2c_mux_del_adapters(muxc);
err_put_parent:
 i2c_put_adapter(parent);

 return ret;
}
