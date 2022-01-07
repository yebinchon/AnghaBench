
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int lock; scalar_t__ cmd_err; } ;
struct wiimote_data {TYPE_1__ state; } ;
typedef int format ;
typedef int data_sens2 ;
typedef int data_sens1 ;
typedef int data_fin ;
typedef int data_enable ;
typedef int __u8 ;
typedef int __u16 ;


 int EIO ;
 int WIIPROTO_FLAGS_IR ;



 int WIIPROTO_REQ_IR1 ;
 int WIIPROTO_REQ_IR2 ;
 int WIIPROTO_REQ_NULL ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wiimote_cmd_acquire (struct wiimote_data*) ;
 int wiimote_cmd_release (struct wiimote_data*) ;
 int wiimote_cmd_set (struct wiimote_data*,int ,int ) ;
 int wiimote_cmd_wait (struct wiimote_data*) ;
 int wiimote_cmd_write (struct wiimote_data*,int,int const*,int) ;
 int wiiproto_req_drm (struct wiimote_data*,int ) ;
 int wiiproto_req_ir1 (struct wiimote_data*,int) ;
 int wiiproto_req_ir2 (struct wiimote_data*,int) ;

__attribute__((used)) static int wiimod_ir_change(struct wiimote_data *wdata, __u16 mode)
{
 int ret;
 unsigned long flags;
 __u8 format = 0;
 static const __u8 data_enable[] = { 0x01 };
 static const __u8 data_sens1[] = { 0x02, 0x00, 0x00, 0x71, 0x01,
      0x00, 0xaa, 0x00, 0x64 };
 static const __u8 data_sens2[] = { 0x63, 0x03 };
 static const __u8 data_fin[] = { 0x08 };

 spin_lock_irqsave(&wdata->state.lock, flags);

 if (mode == (wdata->state.flags & WIIPROTO_FLAGS_IR)) {
  spin_unlock_irqrestore(&wdata->state.lock, flags);
  return 0;
 }

 if (mode == 0) {
  wdata->state.flags &= ~WIIPROTO_FLAGS_IR;
  wiiproto_req_ir1(wdata, 0);
  wiiproto_req_ir2(wdata, 0);
  wiiproto_req_drm(wdata, WIIPROTO_REQ_NULL);
  spin_unlock_irqrestore(&wdata->state.lock, flags);
  return 0;
 }

 spin_unlock_irqrestore(&wdata->state.lock, flags);

 ret = wiimote_cmd_acquire(wdata);
 if (ret)
  return ret;


 spin_lock_irqsave(&wdata->state.lock, flags);
 wiimote_cmd_set(wdata, WIIPROTO_REQ_IR1, 0);
 wiiproto_req_ir1(wdata, 0x06);
 spin_unlock_irqrestore(&wdata->state.lock, flags);

 ret = wiimote_cmd_wait(wdata);
 if (ret)
  goto unlock;
 if (wdata->state.cmd_err) {
  ret = -EIO;
  goto unlock;
 }


 spin_lock_irqsave(&wdata->state.lock, flags);
 wiimote_cmd_set(wdata, WIIPROTO_REQ_IR2, 0);
 wiiproto_req_ir2(wdata, 0x06);
 spin_unlock_irqrestore(&wdata->state.lock, flags);

 ret = wiimote_cmd_wait(wdata);
 if (ret)
  goto unlock;
 if (wdata->state.cmd_err) {
  ret = -EIO;
  goto unlock;
 }


 ret = wiimote_cmd_write(wdata, 0xb00030, data_enable,
       sizeof(data_enable));
 if (ret)
  goto unlock;


 ret = wiimote_cmd_write(wdata, 0xb00000, data_sens1,
       sizeof(data_sens1));
 if (ret)
  goto unlock;


 ret = wiimote_cmd_write(wdata, 0xb0001a, data_sens2,
       sizeof(data_sens2));
 if (ret)
  goto unlock;


 switch (mode) {
  case 128:
   format = 5;
   break;
  case 129:
   format = 3;
   break;
  case 130:
   format = 1;
   break;
 }
 ret = wiimote_cmd_write(wdata, 0xb00033, &format, sizeof(format));
 if (ret)
  goto unlock;


 ret = wiimote_cmd_write(wdata, 0xb00030, data_fin, sizeof(data_fin));
 if (ret)
  goto unlock;


 spin_lock_irqsave(&wdata->state.lock, flags);
 wdata->state.flags &= ~WIIPROTO_FLAGS_IR;
 wdata->state.flags |= mode & WIIPROTO_FLAGS_IR;
 wiiproto_req_drm(wdata, WIIPROTO_REQ_NULL);
 spin_unlock_irqrestore(&wdata->state.lock, flags);

unlock:
 wiimote_cmd_release(wdata);
 return ret;
}
