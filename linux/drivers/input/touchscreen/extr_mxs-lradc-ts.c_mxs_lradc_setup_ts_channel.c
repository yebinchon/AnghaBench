
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_lradc_ts {scalar_t__ base; scalar_t__ settling_delay; scalar_t__ over_sample_delay; scalar_t__ over_sample_cnt; } ;


 int BIT (int) ;
 scalar_t__ LRADC_CH (unsigned int) ;
 int LRADC_CH_ACCUMULATE ;
 int LRADC_CH_NUM_SAMPLES (scalar_t__) ;
 int LRADC_CH_VALUE_MASK ;
 scalar_t__ LRADC_CTRL1 ;
 int LRADC_CTRL1_LRADC_IRQ (unsigned int) ;
 scalar_t__ LRADC_DELAY (int) ;
 int LRADC_DELAY_DELAY (scalar_t__) ;
 int LRADC_DELAY_KICK ;
 int LRADC_DELAY_LOOP (scalar_t__) ;
 int LRADC_DELAY_TRIGGER (int) ;
 int LRADC_DELAY_TRIGGER_DELAYS (int ) ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mxs_lradc_setup_ts_channel(struct mxs_lradc_ts *ts, unsigned int ch)
{
 writel(LRADC_CH_ACCUMULATE |
        LRADC_CH_NUM_SAMPLES(ts->over_sample_cnt - 1),
        ts->base + LRADC_CH(ch));





 writel(LRADC_CH_VALUE_MASK,
        ts->base + LRADC_CH(ch) + STMP_OFFSET_REG_CLR);
 writel(LRADC_DELAY_TRIGGER(1 << ch) | LRADC_DELAY_TRIGGER_DELAYS(0) |
        LRADC_DELAY_LOOP(ts->over_sample_cnt - 1) |
        LRADC_DELAY_DELAY(ts->over_sample_delay - 1),
        ts->base + LRADC_DELAY(3));

 writel(LRADC_CTRL1_LRADC_IRQ(ch),
        ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);







 writel(LRADC_DELAY_TRIGGER(0) | LRADC_DELAY_TRIGGER_DELAYS(BIT(3)) |
        LRADC_DELAY_KICK | LRADC_DELAY_DELAY(ts->settling_delay),
        ts->base + LRADC_DELAY(2));
}
