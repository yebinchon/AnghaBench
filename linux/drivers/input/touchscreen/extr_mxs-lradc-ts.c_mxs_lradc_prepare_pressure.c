
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxs_lradc_ts {int cur_plate; scalar_t__ base; struct mxs_lradc* lradc; } ;
struct mxs_lradc {size_t soc; } ;
struct TYPE_2__ {int pressure; int mask; } ;


 scalar_t__ LRADC_CTRL0 ;
 int LRADC_SAMPLE_PRESSURE ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 scalar_t__ STMP_OFFSET_REG_SET ;
 int TOUCHSCREEN_VCHANNEL1 ;
 int TOUCHSCREEN_VCHANNEL2 ;
 int TS_CH_XP ;
 int TS_CH_YM ;
 TYPE_1__* info ;
 int mxs_lradc_map_ts_channel (struct mxs_lradc_ts*,int ,int ) ;
 int mxs_lradc_setup_ts_pressure (struct mxs_lradc_ts*,int ,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mxs_lradc_prepare_pressure(struct mxs_lradc_ts *ts)
{
 struct mxs_lradc *lradc = ts->lradc;

 writel(info[lradc->soc].mask,
        ts->base + LRADC_CTRL0 + STMP_OFFSET_REG_CLR);
 writel(info[lradc->soc].pressure,
        ts->base + LRADC_CTRL0 + STMP_OFFSET_REG_SET);

 ts->cur_plate = LRADC_SAMPLE_PRESSURE;
 mxs_lradc_map_ts_channel(ts, TOUCHSCREEN_VCHANNEL1, TS_CH_YM);
 mxs_lradc_map_ts_channel(ts, TOUCHSCREEN_VCHANNEL2, TS_CH_XP);
 mxs_lradc_setup_ts_pressure(ts, TOUCHSCREEN_VCHANNEL2,
        TOUCHSCREEN_VCHANNEL1);
}
