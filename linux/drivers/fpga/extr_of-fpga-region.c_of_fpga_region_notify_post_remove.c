
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_overlay_notify_data {int dummy; } ;
struct fpga_region {int * info; int bridge_list; } ;


 int fpga_bridges_disable (int *) ;
 int fpga_bridges_put (int *) ;
 int fpga_image_info_free (int *) ;

__attribute__((used)) static void of_fpga_region_notify_post_remove(struct fpga_region *region,
           struct of_overlay_notify_data *nd)
{
 fpga_bridges_disable(&region->bridge_list);
 fpga_bridges_put(&region->bridge_list);
 fpga_image_info_free(region->info);
 region->info = ((void*)0);
}
