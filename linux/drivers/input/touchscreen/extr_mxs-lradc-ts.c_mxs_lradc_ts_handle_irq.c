
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct mxs_lradc_ts {scalar_t__ base; int lock; struct mxs_lradc* lradc; } ;
struct mxs_lradc {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ LRADC_CTRL1 ;
 unsigned long LRADC_CTRL1_LRADC_IRQ (int ) ;
 unsigned long LRADC_CTRL1_TOUCH_DETECT_IRQ ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 int TOUCHSCREEN_VCHANNEL1 ;
 int TOUCHSCREEN_VCHANNEL2 ;
 int mxs_lradc_handle_touch (struct mxs_lradc_ts*) ;
 unsigned long mxs_lradc_irq_mask (struct mxs_lradc*) ;
 unsigned long readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static irqreturn_t mxs_lradc_ts_handle_irq(int irq, void *data)
{
 struct mxs_lradc_ts *ts = data;
 struct mxs_lradc *lradc = ts->lradc;
 unsigned long reg = readl(ts->base + LRADC_CTRL1);
 u32 clr_irq = mxs_lradc_irq_mask(lradc);
 const u32 ts_irq_mask =
  LRADC_CTRL1_TOUCH_DETECT_IRQ |
  LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL1) |
  LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL2);
 unsigned long flags;

 if (!(reg & mxs_lradc_irq_mask(lradc)))
  return IRQ_NONE;

 if (reg & ts_irq_mask) {
  spin_lock_irqsave(&ts->lock, flags);
  mxs_lradc_handle_touch(ts);
  spin_unlock_irqrestore(&ts->lock, flags);

  clr_irq &= ~(LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL1) |
    LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL2));
  writel(reg & clr_irq,
         ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);
 }

 return IRQ_HANDLED;
}
