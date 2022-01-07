
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device_node* of_node; } ;
struct fpga_region {int bridge_list; struct fpga_image_info* info; struct device dev; } ;
struct fpga_image_info {struct device_node* overlay; } ;
struct device_node {struct device_node* parent; } ;


 int EBUSY ;
 int fpga_bridges_put (int *) ;
 int of_fpga_bridge_get_to_list (struct device_node*,struct fpga_image_info*,int *) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int) ;

__attribute__((used)) static int of_fpga_region_get_bridges(struct fpga_region *region)
{
 struct device *dev = &region->dev;
 struct device_node *region_np = dev->of_node;
 struct fpga_image_info *info = region->info;
 struct device_node *br, *np, *parent_br = ((void*)0);
 int i, ret;


 ret = of_fpga_bridge_get_to_list(region_np->parent, info,
      &region->bridge_list);


 if (ret == -EBUSY)
  return ret;


 if (!ret)
  parent_br = region_np->parent;


 br = of_parse_phandle(info->overlay, "fpga-bridges", 0);
 if (br) {
  of_node_put(br);
  np = info->overlay;
 } else {
  np = region_np;
 }

 for (i = 0; ; i++) {
  br = of_parse_phandle(np, "fpga-bridges", i);
  if (!br)
   break;


  if (br == parent_br) {
   of_node_put(br);
   continue;
  }


  ret = of_fpga_bridge_get_to_list(br, info,
       &region->bridge_list);
  of_node_put(br);


  if (ret == -EBUSY) {
   fpga_bridges_put(&region->bridge_list);
   return -EBUSY;
  }
 }

 return 0;
}
