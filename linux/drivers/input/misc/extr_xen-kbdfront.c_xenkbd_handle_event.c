
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union xenkbd_in_event {int type; int mtouch; int pos; int key; int motion; } ;
struct xenkbd_info {int dummy; } ;






 int xenkbd_handle_key_event (struct xenkbd_info*,int *) ;
 int xenkbd_handle_motion_event (struct xenkbd_info*,int *) ;
 int xenkbd_handle_mt_event (struct xenkbd_info*,int *) ;
 int xenkbd_handle_position_event (struct xenkbd_info*,int *) ;

__attribute__((used)) static void xenkbd_handle_event(struct xenkbd_info *info,
    union xenkbd_in_event *event)
{
 switch (event->type) {
 case 130:
  xenkbd_handle_motion_event(info, &event->motion);
  break;

 case 131:
  xenkbd_handle_key_event(info, &event->key);
  break;

 case 128:
  xenkbd_handle_position_event(info, &event->pos);
  break;

 case 129:
  xenkbd_handle_mt_event(info, &event->mtouch);
  break;
 }
}
