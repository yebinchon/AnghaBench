
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenkbd_motion {int rel_x; int rel_y; int rel_z; } ;
struct xenkbd_info {int ptr; } ;


 int REL_WHEEL ;
 int REL_X ;
 int REL_Y ;
 int input_report_rel (int ,int ,int) ;
 int input_sync (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void xenkbd_handle_motion_event(struct xenkbd_info *info,
           struct xenkbd_motion *motion)
{
 if (unlikely(!info->ptr))
  return;

 input_report_rel(info->ptr, REL_X, motion->rel_x);
 input_report_rel(info->ptr, REL_Y, motion->rel_y);
 if (motion->rel_z)
  input_report_rel(info->ptr, REL_WHEEL, -motion->rel_z);
 input_sync(info->ptr);
}
