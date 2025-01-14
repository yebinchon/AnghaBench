
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct mxs_lradc_ts {int dev; scalar_t__ base; } ;


 scalar_t__ LRADC_CTRL1 ;
 unsigned int LRADC_CTRL1_LRADC_IRQ (unsigned int) ;
 int LRADC_RESOLUTION ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_warn (int ,char*) ;
 unsigned int mxs_lradc_ts_read_raw_channel (struct mxs_lradc_ts*,unsigned int) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static unsigned int mxs_lradc_read_ts_pressure(struct mxs_lradc_ts *ts,
     unsigned int ch1, unsigned int ch2)
{
 u32 reg, mask;
 unsigned int pressure, m1, m2;

 mask = LRADC_CTRL1_LRADC_IRQ(ch1) | LRADC_CTRL1_LRADC_IRQ(ch2);
 reg = readl(ts->base + LRADC_CTRL1) & mask;

 while (reg != mask) {
  reg = readl(ts->base + LRADC_CTRL1) & mask;
  dev_dbg(ts->dev, "One channel is still busy: %X\n", reg);
 }

 m1 = mxs_lradc_ts_read_raw_channel(ts, ch1);
 m2 = mxs_lradc_ts_read_raw_channel(ts, ch2);

 if (m2 == 0) {
  dev_warn(ts->dev, "Cannot calculate pressure\n");
  return 1 << (LRADC_RESOLUTION - 1);
 }


 pressure = m1;
 pressure *= (1 << LRADC_RESOLUTION);
 pressure /= m2;

 dev_dbg(ts->dev, "Pressure = %u\n", pressure);
 return pressure;
}
