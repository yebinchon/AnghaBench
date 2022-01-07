
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int flags; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct input_dev {int dummy; } ;


 int WIIPROTO_FLAG_EXT_USED ;
 int WIIPROTO_REQ_NULL ;
 struct wiimote_data* input_get_drvdata (struct input_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wiiproto_req_drm (struct wiimote_data*,int ) ;

__attribute__((used)) static int wiimod_pro_open(struct input_dev *dev)
{
 struct wiimote_data *wdata = input_get_drvdata(dev);
 unsigned long flags;

 spin_lock_irqsave(&wdata->state.lock, flags);
 wdata->state.flags |= WIIPROTO_FLAG_EXT_USED;
 wiiproto_req_drm(wdata, WIIPROTO_REQ_NULL);
 spin_unlock_irqrestore(&wdata->state.lock, flags);

 return 0;
}
