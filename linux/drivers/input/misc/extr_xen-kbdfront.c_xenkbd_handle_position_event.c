
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenkbd_position {int rel_z; int abs_y; int abs_x; } ;
struct xenkbd_info {int ptr; } ;


 int ABS_X ;
 int ABS_Y ;
 int REL_WHEEL ;
 int input_report_abs (int ,int ,int ) ;
 int input_report_rel (int ,int ,int) ;
 int input_sync (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void xenkbd_handle_position_event(struct xenkbd_info *info,
      struct xenkbd_position *pos)
{
 if (unlikely(!info->ptr))
  return;

 input_report_abs(info->ptr, ABS_X, pos->abs_x);
 input_report_abs(info->ptr, ABS_Y, pos->abs_y);
 if (pos->rel_z)
  input_report_rel(info->ptr, REL_WHEEL, -pos->rel_z);
 input_sync(info->ptr);
}
