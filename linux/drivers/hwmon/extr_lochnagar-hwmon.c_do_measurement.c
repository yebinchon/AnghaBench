
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
typedef enum lochnagar_measure_mode { ____Placeholder_lochnagar_measure_mode } lochnagar_measure_mode ;


 int LOCHNAGAR2_IMON_CONFIGURE_MASK ;
 int LOCHNAGAR2_IMON_CTRL1 ;
 int LOCHNAGAR2_IMON_CTRL2 ;
 int LOCHNAGAR2_IMON_CTRL3 ;
 unsigned int LOCHNAGAR2_IMON_DONE_MASK ;
 int LOCHNAGAR2_IMON_ENA_MASK ;
 int LOCHNAGAR2_IMON_MEASURED_CHANNELS_SHIFT ;
 int LOCHNAGAR2_IMON_MEASURE_MASK ;
 int msleep (int) ;
 int regmap_read_poll_timeout (struct regmap*,int ,unsigned int,unsigned int,int,int) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int do_measurement(struct regmap *regmap, int chan,
     enum lochnagar_measure_mode mode, int nsamples)
{
 unsigned int val;
 int ret;

 chan = 1 << (chan + LOCHNAGAR2_IMON_MEASURED_CHANNELS_SHIFT);

 ret = regmap_write(regmap, LOCHNAGAR2_IMON_CTRL1,
      LOCHNAGAR2_IMON_ENA_MASK | chan | mode);
 if (ret < 0)
  return ret;

 ret = regmap_write(regmap, LOCHNAGAR2_IMON_CTRL2, nsamples);
 if (ret < 0)
  return ret;

 ret = regmap_write(regmap, LOCHNAGAR2_IMON_CTRL3,
      LOCHNAGAR2_IMON_CONFIGURE_MASK);
 if (ret < 0)
  return ret;

 ret = regmap_read_poll_timeout(regmap, LOCHNAGAR2_IMON_CTRL3, val,
     val & LOCHNAGAR2_IMON_DONE_MASK,
     1000, 10000);
 if (ret < 0)
  return ret;

 ret = regmap_write(regmap, LOCHNAGAR2_IMON_CTRL3,
      LOCHNAGAR2_IMON_MEASURE_MASK);
 if (ret < 0)
  return ret;
 msleep((nsamples * 3) / 2);

 ret = regmap_read_poll_timeout(regmap, LOCHNAGAR2_IMON_CTRL3, val,
     val & LOCHNAGAR2_IMON_DONE_MASK,
     5000, 200000);
 if (ret < 0)
  return ret;

 return regmap_write(regmap, LOCHNAGAR2_IMON_CTRL3, 0);
}
