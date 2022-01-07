
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msc_window {int lockout; int lo_lock; TYPE_1__* msc; } ;
typedef enum lockout_state { ____Placeholder_lockout_state } lockout_state ;
struct TYPE_2__ {int user_count; int mbuf; } ;


 int EBUSY ;
 int EINVAL ;
 int WIN_LOCKED ;
 int WIN_READY ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int dev_warn_ratelimited (int ,char*,int,int) ;
 int msc_dev (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int msc_win_set_lockout(struct msc_window *win,
          enum lockout_state expect,
          enum lockout_state new)
{
 enum lockout_state old;
 unsigned long flags;
 int ret = 0;

 if (!win->msc->mbuf)
  return 0;

 spin_lock_irqsave(&win->lo_lock, flags);
 old = win->lockout;

 if (old != expect) {
  ret = -EINVAL;
  dev_warn_ratelimited(msc_dev(win->msc),
         "expected lockout state %d, got %d\n",
         expect, old);
  goto unlock;
 }

 win->lockout = new;

 if (old == expect && new == WIN_LOCKED)
  atomic_inc(&win->msc->user_count);
 else if (old == expect && old == WIN_LOCKED)
  atomic_dec(&win->msc->user_count);

unlock:
 spin_unlock_irqrestore(&win->lo_lock, flags);

 if (ret) {
  if (expect == WIN_READY && old == WIN_LOCKED)
   return -EBUSY;


  if (expect == WIN_LOCKED && old == new)
   return 0;
 }

 return ret;
}
