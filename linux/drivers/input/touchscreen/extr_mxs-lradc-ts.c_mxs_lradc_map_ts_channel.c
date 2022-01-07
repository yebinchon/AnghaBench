
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_lradc_ts {scalar_t__ base; } ;


 scalar_t__ LRADC_CTRL4 ;
 int LRADC_CTRL4_LRADCSELECT (unsigned int,unsigned int) ;
 int LRADC_CTRL4_LRADCSELECT_MASK (unsigned int) ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 scalar_t__ STMP_OFFSET_REG_SET ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mxs_lradc_map_ts_channel(struct mxs_lradc_ts *ts, unsigned int vch,
         unsigned int ch)
{
 writel(LRADC_CTRL4_LRADCSELECT_MASK(vch),
        ts->base + LRADC_CTRL4 + STMP_OFFSET_REG_CLR);
 writel(LRADC_CTRL4_LRADCSELECT(vch, ch),
        ts->base + LRADC_CTRL4 + STMP_OFFSET_REG_SET);
}
