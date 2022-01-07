
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_dax {struct dax_region* region; } ;
struct dax_region {int target_node; } ;



__attribute__((used)) static int dev_dax_target_node(struct dev_dax *dev_dax)
{
 struct dax_region *dax_region = dev_dax->region;

 return dax_region->target_node;
}
