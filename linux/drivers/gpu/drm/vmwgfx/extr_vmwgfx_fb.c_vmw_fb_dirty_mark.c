
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int x1; unsigned int x2; unsigned int y1; unsigned int y2; int lock; scalar_t__ active; } ;
struct vmw_fb_par {TYPE_1__ dirty; int local_work; } ;


 int VMW_DIRTY_DELAY ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void vmw_fb_dirty_mark(struct vmw_fb_par *par,
         unsigned x1, unsigned y1,
         unsigned width, unsigned height)
{
 unsigned long flags;
 unsigned x2 = x1 + width;
 unsigned y2 = y1 + height;

 spin_lock_irqsave(&par->dirty.lock, flags);
 if (par->dirty.x1 == par->dirty.x2) {
  par->dirty.x1 = x1;
  par->dirty.y1 = y1;
  par->dirty.x2 = x2;
  par->dirty.y2 = y2;


  if (par->dirty.active)
   schedule_delayed_work(&par->local_work,
           VMW_DIRTY_DELAY);
 } else {
  if (x1 < par->dirty.x1)
   par->dirty.x1 = x1;
  if (y1 < par->dirty.y1)
   par->dirty.y1 = y1;
  if (x2 > par->dirty.x2)
   par->dirty.x2 = x2;
  if (y2 > par->dirty.y2)
   par->dirty.y2 = y2;
 }
 spin_unlock_irqrestore(&par->dirty.lock, flags);
}
