
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiimote_debug {TYPE_1__* wdata; } ;
struct seq_file {struct wiimote_debug* private; } ;
typedef size_t __u8 ;
struct TYPE_4__ {size_t drm; int lock; } ;
struct TYPE_3__ {TYPE_2__ state; } ;


 size_t WIIPROTO_REQ_MAX ;
 int seq_printf (struct seq_file*,char*,char const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 char** wiidebug_drmmap ;

__attribute__((used)) static int wiidebug_drm_show(struct seq_file *f, void *p)
{
 struct wiimote_debug *dbg = f->private;
 const char *str = ((void*)0);
 unsigned long flags;
 __u8 drm;

 spin_lock_irqsave(&dbg->wdata->state.lock, flags);
 drm = dbg->wdata->state.drm;
 spin_unlock_irqrestore(&dbg->wdata->state.lock, flags);

 if (drm < WIIPROTO_REQ_MAX)
  str = wiidebug_drmmap[drm];
 if (!str)
  str = "unknown";

 seq_printf(f, "%s\n", str);

 return 0;
}
