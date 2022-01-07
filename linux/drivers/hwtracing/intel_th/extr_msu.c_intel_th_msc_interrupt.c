
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct msc_window {int sgt; } ;
struct msc {int mbuf_priv; TYPE_1__* mbuf; int work; struct msc_window* cur_win; scalar_t__ enabled; scalar_t__ msu_base; int do_irq; scalar_t__ index; } ;
struct intel_th_device {int dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* ready ) (int ,int ,int ) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MSUSTS_MSC0BLAST ;
 int MSUSTS_MSC1BLAST ;
 scalar_t__ REG_MSU_MSUSTS ;
 int WIN_INUSE ;
 int WIN_LOCKED ;
 int WIN_READY ;
 struct msc* dev_get_drvdata (int *) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 struct msc_window* msc_next_window (struct msc_window*) ;
 scalar_t__ msc_win_set_lockout (struct msc_window*,int ,int ) ;
 int msc_win_switch (struct msc*) ;
 int msc_win_total_sz (struct msc_window*) ;
 int schedule_work (int *) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t intel_th_msc_interrupt(struct intel_th_device *thdev)
{
 struct msc *msc = dev_get_drvdata(&thdev->dev);
 u32 msusts = ioread32(msc->msu_base + REG_MSU_MSUSTS);
 u32 mask = msc->index ? MSUSTS_MSC1BLAST : MSUSTS_MSC0BLAST;
 struct msc_window *win, *next_win;

 if (!msc->do_irq || !msc->mbuf)
  return IRQ_NONE;

 msusts &= mask;

 if (!msusts)
  return msc->enabled ? IRQ_HANDLED : IRQ_NONE;

 iowrite32(msusts, msc->msu_base + REG_MSU_MSUSTS);

 if (!msc->enabled)
  return IRQ_NONE;


 win = msc->cur_win;
 if (!win)
  return IRQ_HANDLED;
 next_win = msc_next_window(win);
 if (!next_win)
  return IRQ_HANDLED;


 if (msc_win_set_lockout(next_win, WIN_READY, WIN_INUSE)) {
  schedule_work(&msc->work);
  return IRQ_HANDLED;
 }


 msc_win_set_lockout(win, WIN_INUSE, WIN_LOCKED);

 msc_win_switch(msc);

 if (msc->mbuf && msc->mbuf->ready)
  msc->mbuf->ready(msc->mbuf_priv, win->sgt,
     msc_win_total_sz(win));

 return IRQ_HANDLED;
}
