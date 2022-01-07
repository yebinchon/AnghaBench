
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct dc_transfer_func_distributed_points {void** blue; void** green; void** red; } ;


 void* dc_fixpt_clamp (void*,int ,int ) ;
 int dc_fixpt_one ;
 int dc_fixpt_zero ;

__attribute__((used)) static void build_new_custom_resulted_curve(
 uint32_t hw_points_num,
 struct dc_transfer_func_distributed_points *tf_pts)
{
 uint32_t i;

 i = 0;

 while (i != hw_points_num + 1) {
  tf_pts->red[i] = dc_fixpt_clamp(
   tf_pts->red[i], dc_fixpt_zero,
   dc_fixpt_one);
  tf_pts->green[i] = dc_fixpt_clamp(
   tf_pts->green[i], dc_fixpt_zero,
   dc_fixpt_one);
  tf_pts->blue[i] = dc_fixpt_clamp(
   tf_pts->blue[i], dc_fixpt_zero,
   dc_fixpt_one);

  ++i;
 }
}
