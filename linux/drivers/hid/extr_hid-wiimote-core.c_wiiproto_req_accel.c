
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct wiimote_data {TYPE_1__ state; } ;
typedef int __u8 ;


 int WIIPROTO_FLAG_ACCEL ;
 int WIIPROTO_REQ_NULL ;
 int wiiproto_req_drm (struct wiimote_data*,int ) ;

void wiiproto_req_accel(struct wiimote_data *wdata, __u8 accel)
{
 accel = !!accel;
 if (accel == !!(wdata->state.flags & WIIPROTO_FLAG_ACCEL))
  return;

 if (accel)
  wdata->state.flags |= WIIPROTO_FLAG_ACCEL;
 else
  wdata->state.flags &= ~WIIPROTO_FLAG_ACCEL;

 wiiproto_req_drm(wdata, WIIPROTO_REQ_NULL);
}
