
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_nocp {int dev; int regmap; } ;
struct devfreq_event_dev {int dummy; } ;


 int NOCP_CFG_CTL ;
 int NOCP_CFG_CTL_GLOBALEN_MASK ;
 int NOCP_CNT_ALARM_MODE_MASK ;
 int NOCP_CNT_ALARM_MODE_MIN_MAX_MASK ;
 int NOCP_CNT_SRC_INTEVENT_BYTE_MASK ;
 int NOCP_CNT_SRC_INTEVENT_CHAIN_MASK ;
 int NOCP_CNT_SRC_INTEVENT_CYCLE_MASK ;
 int NOCP_CNT_SRC_INTEVENT_MASK ;
 int NOCP_COUNTERS_0_ALARM_MODE ;
 int NOCP_COUNTERS_0_SRC ;
 int NOCP_COUNTERS_1_ALARM_MODE ;
 int NOCP_COUNTERS_1_SRC ;
 int NOCP_COUNTERS_2_ALARM_MODE ;
 int NOCP_COUNTERS_2_SRC ;
 int NOCP_COUNTERS_3_ALARM_MODE ;
 int NOCP_COUNTERS_3_SRC ;
 int NOCP_MAIN_CTL ;
 int NOCP_MAIN_CTL_ALARMEN_MASK ;
 int NOCP_MAIN_CTL_STATEN_MASK ;
 int NOCP_STAT_ALARM_MAX ;
 int NOCP_STAT_ALARM_MIN ;
 int NOCP_STAT_PERIOD ;
 int dev_err (int ,char*) ;
 struct exynos_nocp* devfreq_event_get_drvdata (struct devfreq_event_dev*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int exynos_nocp_set_event(struct devfreq_event_dev *edev)
{
 struct exynos_nocp *nocp = devfreq_event_get_drvdata(edev);
 int ret;


 ret = regmap_update_bits(nocp->regmap, NOCP_MAIN_CTL,
    NOCP_MAIN_CTL_STATEN_MASK, 0);
 if (ret < 0) {
  dev_err(nocp->dev, "failed to disable the NoC probe device\n");
  return ret;
 }


 ret = regmap_write(nocp->regmap, NOCP_STAT_PERIOD, 0x0);
 if (ret < 0)
  goto out;


 ret = regmap_update_bits(nocp->regmap, NOCP_COUNTERS_0_SRC,
    NOCP_CNT_SRC_INTEVENT_MASK,
    NOCP_CNT_SRC_INTEVENT_BYTE_MASK);
 if (ret < 0)
  goto out;

 ret = regmap_update_bits(nocp->regmap, NOCP_COUNTERS_1_SRC,
    NOCP_CNT_SRC_INTEVENT_MASK,
    NOCP_CNT_SRC_INTEVENT_CHAIN_MASK);
 if (ret < 0)
  goto out;

 ret = regmap_update_bits(nocp->regmap, NOCP_COUNTERS_2_SRC,
    NOCP_CNT_SRC_INTEVENT_MASK,
    NOCP_CNT_SRC_INTEVENT_CYCLE_MASK);
 if (ret < 0)
  goto out;

 ret = regmap_update_bits(nocp->regmap, NOCP_COUNTERS_3_SRC,
    NOCP_CNT_SRC_INTEVENT_MASK,
    NOCP_CNT_SRC_INTEVENT_CHAIN_MASK);
 if (ret < 0)
  goto out;



 ret = regmap_write(nocp->regmap, NOCP_STAT_ALARM_MIN, 0x0);
 if (ret < 0)
  goto out;

 ret = regmap_write(nocp->regmap, NOCP_STAT_ALARM_MAX, 0x0);
 if (ret < 0)
  goto out;


 ret = regmap_update_bits(nocp->regmap, NOCP_COUNTERS_0_ALARM_MODE,
    NOCP_CNT_ALARM_MODE_MASK,
    NOCP_CNT_ALARM_MODE_MIN_MAX_MASK);
 if (ret < 0)
  goto out;

 ret = regmap_update_bits(nocp->regmap, NOCP_COUNTERS_1_ALARM_MODE,
    NOCP_CNT_ALARM_MODE_MASK,
    NOCP_CNT_ALARM_MODE_MIN_MAX_MASK);
 if (ret < 0)
  goto out;

 ret = regmap_update_bits(nocp->regmap, NOCP_COUNTERS_2_ALARM_MODE,
    NOCP_CNT_ALARM_MODE_MASK,
    NOCP_CNT_ALARM_MODE_MIN_MAX_MASK);
 if (ret < 0)
  goto out;

 ret = regmap_update_bits(nocp->regmap, NOCP_COUNTERS_3_ALARM_MODE,
    NOCP_CNT_ALARM_MODE_MASK,
    NOCP_CNT_ALARM_MODE_MIN_MAX_MASK);
 if (ret < 0)
  goto out;


 ret = regmap_update_bits(nocp->regmap, NOCP_MAIN_CTL,
   NOCP_MAIN_CTL_STATEN_MASK | NOCP_MAIN_CTL_ALARMEN_MASK,
   NOCP_MAIN_CTL_STATEN_MASK | NOCP_MAIN_CTL_ALARMEN_MASK);
 if (ret < 0)
  goto out;


 ret = regmap_update_bits(nocp->regmap, NOCP_CFG_CTL,
    NOCP_CFG_CTL_GLOBALEN_MASK,
    NOCP_CFG_CTL_GLOBALEN_MASK);
 if (ret < 0)
  goto out;


 ret = regmap_update_bits(nocp->regmap, NOCP_MAIN_CTL,
    NOCP_MAIN_CTL_STATEN_MASK,
    NOCP_MAIN_CTL_STATEN_MASK);
 if (ret < 0)
  goto out;

 return 0;

out:

 if (regmap_update_bits(nocp->regmap, NOCP_MAIN_CTL,
    NOCP_MAIN_CTL_STATEN_MASK, 0)) {
  dev_err(nocp->dev, "Failed to reset NoC probe device\n");
 }

 return ret;
}
