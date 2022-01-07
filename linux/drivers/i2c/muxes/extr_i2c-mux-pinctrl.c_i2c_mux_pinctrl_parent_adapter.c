
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int ENODEV ;
 int EPROBE_DEFER ;
 struct i2c_adapter* ERR_PTR (int ) ;
 int dev_err (struct device*,char*) ;
 struct i2c_adapter* of_find_i2c_adapter_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;

__attribute__((used)) static struct i2c_adapter *i2c_mux_pinctrl_parent_adapter(struct device *dev)
{
 struct device_node *np = dev->of_node;
 struct device_node *parent_np;
 struct i2c_adapter *parent;

 parent_np = of_parse_phandle(np, "i2c-parent", 0);
 if (!parent_np) {
  dev_err(dev, "Cannot parse i2c-parent\n");
  return ERR_PTR(-ENODEV);
 }
 parent = of_find_i2c_adapter_by_node(parent_np);
 of_node_put(parent_np);
 if (!parent)
  return ERR_PTR(-EPROBE_DEFER);

 return parent;
}
