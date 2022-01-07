
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_region {int dummy; } ;
struct device_node {int dummy; } ;


 int device_match_of_node ;
 struct fpga_region* fpga_region_class_find (int *,struct device_node*,int ) ;

__attribute__((used)) static struct fpga_region *of_fpga_region_find(struct device_node *np)
{
 return fpga_region_class_find(((void*)0), np, device_match_of_node);
}
