
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos_ppmu {int regmap; } ;
struct devfreq_event_dev {int dummy; } ;


 int PPMU_CCNT_MASK ;
 int PPMU_PMCNT0_MASK ;
 int PPMU_PMCNT1_MASK ;
 int PPMU_PMCNT2_MASK ;
 int PPMU_PMCNT3_MASK ;
 int PPMU_PMNC_ENABLE_MASK ;
 int PPMU_V2_CH_EV0_TYPE ;
 int PPMU_V2_CH_EV1_TYPE ;
 int PPMU_V2_CH_EV2_TYPE ;
 int PPMU_V2_CH_EV3_TYPE ;
 int PPMU_V2_CIG_CFG0 ;
 int PPMU_V2_CIG_CFG1 ;
 int PPMU_V2_CIG_CFG2 ;
 int PPMU_V2_CIG_RESULT ;
 int PPMU_V2_CNTENC ;
 int PPMU_V2_CNT_AUTO ;
 int PPMU_V2_CNT_RESET ;
 int PPMU_V2_FLAG ;
 int PPMU_V2_INTENC ;
 int PPMU_V2_INTERRUPT_RESET ;
 int PPMU_V2_PMNC ;
 int PPMU_V2_SM_ID_A ;
 int PPMU_V2_SM_ID_V ;
 int PPMU_V2_SM_OTHERS_A ;
 int PPMU_V2_SM_OTHERS_V ;
 struct exynos_ppmu* devfreq_event_get_drvdata (struct devfreq_event_dev*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int exynos_ppmu_v2_disable(struct devfreq_event_dev *edev)
{
 struct exynos_ppmu *info = devfreq_event_get_drvdata(edev);
 int ret;
 u32 pmnc, clear;


 clear = (PPMU_CCNT_MASK | PPMU_PMCNT0_MASK | PPMU_PMCNT1_MASK
  | PPMU_PMCNT2_MASK | PPMU_PMCNT3_MASK);
 ret = regmap_write(info->regmap, PPMU_V2_FLAG, clear);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_INTENC, clear);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_CNTENC, clear);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_CNT_RESET, clear);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_CIG_CFG0, 0x0);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_CIG_CFG1, 0x0);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_CIG_CFG2, 0x0);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_CIG_RESULT, 0x0);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_CNT_AUTO, 0x0);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_CH_EV0_TYPE, 0x0);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_CH_EV1_TYPE, 0x0);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_CH_EV2_TYPE, 0x0);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_CH_EV3_TYPE, 0x0);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_SM_ID_V, 0x0);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_SM_ID_A, 0x0);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_SM_OTHERS_V, 0x0);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_SM_OTHERS_A, 0x0);
 if (ret < 0)
  return ret;

 ret = regmap_write(info->regmap, PPMU_V2_INTERRUPT_RESET, 0x0);
 if (ret < 0)
  return ret;


 ret = regmap_read(info->regmap, PPMU_V2_PMNC, &pmnc);
 if (ret < 0)
  return ret;

 pmnc &= ~PPMU_PMNC_ENABLE_MASK;
 ret = regmap_write(info->regmap, PPMU_V2_PMNC, pmnc);
 if (ret < 0)
  return ret;

 return 0;
}
