
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ flags; scalar_t__ devtype; } ;
struct wiimote_data {TYPE_1__ state; } ;
typedef scalar_t__ __u8 ;


 scalar_t__ WIIMOTE_DEV_BALANCE_BOARD ;
 scalar_t__ WIIPROTO_FLAGS_IR ;
 int WIIPROTO_FLAG_ACCEL ;
 int WIIPROTO_FLAG_EXT_USED ;
 scalar_t__ WIIPROTO_FLAG_IR_BASIC ;
 scalar_t__ WIIPROTO_FLAG_IR_EXT ;
 scalar_t__ WIIPROTO_FLAG_IR_FULL ;
 int WIIPROTO_FLAG_MP_USED ;
 scalar_t__ WIIPROTO_REQ_DRM_K ;
 scalar_t__ WIIPROTO_REQ_DRM_KA ;
 scalar_t__ WIIPROTO_REQ_DRM_KAE ;
 scalar_t__ WIIPROTO_REQ_DRM_KAI ;
 scalar_t__ WIIPROTO_REQ_DRM_KAIE ;
 scalar_t__ WIIPROTO_REQ_DRM_KEE ;
 scalar_t__ WIIPROTO_REQ_DRM_KIE ;
 scalar_t__ WIIPROTO_REQ_DRM_SKAI1 ;

__attribute__((used)) static __u8 select_drm(struct wiimote_data *wdata)
{
 __u8 ir = wdata->state.flags & WIIPROTO_FLAGS_IR;
 bool ext;

 ext = (wdata->state.flags & WIIPROTO_FLAG_EXT_USED) ||
       (wdata->state.flags & WIIPROTO_FLAG_MP_USED);


 if (wdata->state.devtype == WIIMOTE_DEV_BALANCE_BOARD) {
  if (ext)
   return WIIPROTO_REQ_DRM_KEE;
  else
   return WIIPROTO_REQ_DRM_K;
 }

 if (ir == WIIPROTO_FLAG_IR_BASIC) {
  if (wdata->state.flags & WIIPROTO_FLAG_ACCEL) {





   return WIIPROTO_REQ_DRM_KAIE;
  } else {
   return WIIPROTO_REQ_DRM_KIE;
  }
 } else if (ir == WIIPROTO_FLAG_IR_EXT) {
  return WIIPROTO_REQ_DRM_KAI;
 } else if (ir == WIIPROTO_FLAG_IR_FULL) {
  return WIIPROTO_REQ_DRM_SKAI1;
 } else {
  if (wdata->state.flags & WIIPROTO_FLAG_ACCEL) {
   if (ext)
    return WIIPROTO_REQ_DRM_KAE;
   else
    return WIIPROTO_REQ_DRM_KA;
  } else {
   if (ext)
    return WIIPROTO_REQ_DRM_KEE;
   else
    return WIIPROTO_REQ_DRM_K;
  }
 }
}
