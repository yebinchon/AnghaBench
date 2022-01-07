
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxs_lradc_ts {scalar_t__ base; struct mxs_lradc* lradc; } ;
struct mxs_lradc {size_t soc; } ;
struct TYPE_2__ {int bit; int mask; } ;


 scalar_t__ LRADC_CTRL0 ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 scalar_t__ STMP_OFFSET_REG_SET ;
 TYPE_1__* info ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mxs_lradc_setup_touch_detection(struct mxs_lradc_ts *ts)
{
 struct mxs_lradc *lradc = ts->lradc;







 writel(info[lradc->soc].mask,
        ts->base + LRADC_CTRL0 + STMP_OFFSET_REG_CLR);
 writel(info[lradc->soc].bit,
        ts->base + LRADC_CTRL0 + STMP_OFFSET_REG_SET);
}
