
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int EINVAL ;
 int fpga_region_of_match ;
 struct device_node* of_find_matching_node (struct device_node*,int ) ;
 int of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int pr_err (char*,struct device_node*) ;

__attribute__((used)) static int child_regions_with_firmware(struct device_node *overlay)
{
 struct device_node *child_region;
 const char *child_firmware_name;
 int ret = 0;

 of_node_get(overlay);

 child_region = of_find_matching_node(overlay, fpga_region_of_match);
 while (child_region) {
  if (!of_property_read_string(child_region, "firmware-name",
          &child_firmware_name)) {
   ret = -EINVAL;
   break;
  }
  child_region = of_find_matching_node(child_region,
           fpga_region_of_match);
 }

 of_node_put(child_region);

 if (ret)
  pr_err("firmware-name not allowed in child FPGA region: %pOF",
         child_region);

 return ret;
}
