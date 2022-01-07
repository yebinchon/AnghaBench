
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int minor; int major; } ;
struct TYPE_4__ {int abs_y; int abs_x; } ;
struct TYPE_6__ {int orientation; TYPE_2__ shape; TYPE_1__ pos; } ;
struct xenkbd_mtouch {scalar_t__ contact_id; int event_type; TYPE_3__ u; } ;
struct xenkbd_info {scalar_t__ mtouch_cur_contact_id; int mtouch; } ;


 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int MT_TOOL_FINGER ;






 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,scalar_t__) ;
 int input_mt_sync_frame (int ) ;
 int input_report_abs (int ,int ,int ) ;
 int input_sync (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void xenkbd_handle_mt_event(struct xenkbd_info *info,
       struct xenkbd_mtouch *mtouch)
{
 if (unlikely(!info->mtouch))
  return;

 if (mtouch->contact_id != info->mtouch_cur_contact_id) {
  info->mtouch_cur_contact_id = mtouch->contact_id;
  input_mt_slot(info->mtouch, mtouch->contact_id);
 }

 switch (mtouch->event_type) {
 case 133:
  input_mt_report_slot_state(info->mtouch, MT_TOOL_FINGER, 1);


 case 132:
  input_report_abs(info->mtouch, ABS_MT_POSITION_X,
     mtouch->u.pos.abs_x);
  input_report_abs(info->mtouch, ABS_MT_POSITION_Y,
     mtouch->u.pos.abs_y);
  break;

 case 130:
  input_report_abs(info->mtouch, ABS_MT_TOUCH_MAJOR,
     mtouch->u.shape.major);
  input_report_abs(info->mtouch, ABS_MT_TOUCH_MINOR,
     mtouch->u.shape.minor);
  break;

 case 131:
  input_report_abs(info->mtouch, ABS_MT_ORIENTATION,
     mtouch->u.orientation);
  break;

 case 128:
  input_mt_report_slot_state(info->mtouch, MT_TOOL_FINGER, 0);
  break;

 case 129:
  input_mt_sync_frame(info->mtouch);
  input_sync(info->mtouch);
  break;
 }
}
