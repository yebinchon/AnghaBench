
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;


 int EINVAL ;
 int ENODEV ;
 int EPROBE_DEFER ;
 struct i2c_adapter* ERR_PTR (int ) ;
 struct i2c_adapter* of_get_i2c_adapter_by_node (struct device_node*) ;
 struct device_node* of_graph_get_remote_node (int ,int,int) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;

__attribute__((used)) static struct i2c_adapter *sun4i_hdmi_get_ddc(struct device *dev)
{
 struct device_node *phandle, *remote;
 struct i2c_adapter *ddc;

 remote = of_graph_get_remote_node(dev->of_node, 1, -1);
 if (!remote)
  return ERR_PTR(-EINVAL);

 phandle = of_parse_phandle(remote, "ddc-i2c-bus", 0);
 of_node_put(remote);
 if (!phandle)
  return ERR_PTR(-ENODEV);

 ddc = of_get_i2c_adapter_by_node(phandle);
 of_node_put(phandle);
 if (!ddc)
  return ERR_PTR(-EPROBE_DEFER);

 return ddc;
}
