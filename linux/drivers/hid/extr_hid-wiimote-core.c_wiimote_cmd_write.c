
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cmd_err; int lock; } ;
struct wiimote_data {TYPE_1__ state; } ;
typedef int __u8 ;
typedef int __u32 ;


 int EIO ;
 int WIIPROTO_REQ_WMEM ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wiimote_cmd_set (struct wiimote_data*,int ,int ) ;
 int wiimote_cmd_wait (struct wiimote_data*) ;
 int wiiproto_req_wreg (struct wiimote_data*,int ,int const*,int ) ;

int wiimote_cmd_write(struct wiimote_data *wdata, __u32 offset,
      const __u8 *wmem, __u8 size)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&wdata->state.lock, flags);
 wiimote_cmd_set(wdata, WIIPROTO_REQ_WMEM, 0);
 wiiproto_req_wreg(wdata, offset, wmem, size);
 spin_unlock_irqrestore(&wdata->state.lock, flags);

 ret = wiimote_cmd_wait(wdata);
 if (!ret && wdata->state.cmd_err)
  ret = -EIO;

 return ret;
}
