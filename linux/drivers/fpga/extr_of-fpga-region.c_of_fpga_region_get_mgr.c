
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_manager {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 struct fpga_manager* ERR_PTR (int ) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 struct fpga_manager* of_fpga_mgr_get (struct device_node*) ;
 struct device_node* of_get_next_parent (struct device_node*) ;
 int of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;

__attribute__((used)) static struct fpga_manager *of_fpga_region_get_mgr(struct device_node *np)
{
 struct device_node *mgr_node;
 struct fpga_manager *mgr;

 of_node_get(np);
 while (np) {
  if (of_device_is_compatible(np, "fpga-region")) {
   mgr_node = of_parse_phandle(np, "fpga-mgr", 0);
   if (mgr_node) {
    mgr = of_fpga_mgr_get(mgr_node);
    of_node_put(mgr_node);
    of_node_put(np);
    return mgr;
   }
  }
  np = of_get_next_parent(np);
 }
 of_node_put(np);

 return ERR_PTR(-EINVAL);
}
