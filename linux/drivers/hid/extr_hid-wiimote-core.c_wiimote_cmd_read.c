
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd_read_size; int lock; int * cmd_read_buf; } ;
struct wiimote_data {TYPE_1__ state; } ;
typedef int ssize_t ;
typedef int __u8 ;
typedef int __u32 ;


 int EIO ;
 int WIIPROTO_REQ_RMEM ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wiimote_cmd_set (struct wiimote_data*,int ,int) ;
 int wiimote_cmd_wait (struct wiimote_data*) ;
 int wiiproto_req_rreg (struct wiimote_data*,int,int ) ;

ssize_t wiimote_cmd_read(struct wiimote_data *wdata, __u32 offset, __u8 *rmem,
        __u8 size)
{
 unsigned long flags;
 ssize_t ret;

 spin_lock_irqsave(&wdata->state.lock, flags);
 wdata->state.cmd_read_size = size;
 wdata->state.cmd_read_buf = rmem;
 wiimote_cmd_set(wdata, WIIPROTO_REQ_RMEM, offset & 0xffff);
 wiiproto_req_rreg(wdata, offset, size);
 spin_unlock_irqrestore(&wdata->state.lock, flags);

 ret = wiimote_cmd_wait(wdata);

 spin_lock_irqsave(&wdata->state.lock, flags);
 wdata->state.cmd_read_buf = ((void*)0);
 spin_unlock_irqrestore(&wdata->state.lock, flags);

 if (!ret) {
  if (wdata->state.cmd_read_size == 0)
   ret = -EIO;
  else
   ret = wdata->state.cmd_read_size;
 }

 return ret;
}
