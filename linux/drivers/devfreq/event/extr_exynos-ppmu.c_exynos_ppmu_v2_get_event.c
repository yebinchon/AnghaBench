
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct exynos_ppmu {int regmap; } ;
struct devfreq_event_dev {TYPE_1__* desc; int dev; } ;
struct devfreq_event_data {unsigned int total_count; unsigned long load_count; } ;
struct TYPE_2__ {int name; } ;


 int PPMU_CCNT_MASK ;
 int PPMU_ENABLE ;




 unsigned int PPMU_PMNC_ENABLE_MASK ;
 int PPMU_V2_CCNT ;
 int PPMU_V2_CNTENC ;
 int PPMU_V2_PMCNT3_HIGH ;
 int PPMU_V2_PMCNT3_LOW ;
 int PPMU_V2_PMNC ;
 int PPMU_V2_PMNCT (int) ;
 int dev_dbg (int *,char*,int ,unsigned long,unsigned int) ;
 struct exynos_ppmu* devfreq_event_get_drvdata (struct devfreq_event_dev*) ;
 int exynos_ppmu_find_ppmu_id (struct devfreq_event_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int exynos_ppmu_v2_get_event(struct devfreq_event_dev *edev,
        struct devfreq_event_data *edata)
{
 struct exynos_ppmu *info = devfreq_event_get_drvdata(edev);
 int id = exynos_ppmu_find_ppmu_id(edev);
 int ret;
 unsigned int pmnc, cntenc;
 unsigned int pmcnt_high, pmcnt_low;
 unsigned int total_count, count;
 unsigned long load_count = 0;


 ret = regmap_read(info->regmap, PPMU_V2_PMNC, &pmnc);
 if (ret < 0)
  return ret;

 pmnc &= ~PPMU_PMNC_ENABLE_MASK;
 ret = regmap_write(info->regmap, PPMU_V2_PMNC, pmnc);
 if (ret < 0)
  return ret;


 ret = regmap_read(info->regmap, PPMU_V2_CCNT, &total_count);
 if (ret < 0)
  return ret;
 edata->total_count = total_count;

 switch (id) {
 case 131:
 case 130:
 case 129:
  ret = regmap_read(info->regmap, PPMU_V2_PMNCT(id), &count);
  if (ret < 0)
   return ret;
  load_count = count;
  break;
 case 128:
  ret = regmap_read(info->regmap, PPMU_V2_PMCNT3_HIGH,
      &pmcnt_high);
  if (ret < 0)
   return ret;

  ret = regmap_read(info->regmap, PPMU_V2_PMCNT3_LOW, &pmcnt_low);
  if (ret < 0)
   return ret;

  load_count = ((u64)((pmcnt_high & 0xff)) << 32)+ (u64)pmcnt_low;
  break;
 }
 edata->load_count = load_count;


 ret = regmap_read(info->regmap, PPMU_V2_CNTENC, &cntenc);
 if (ret < 0)
  return 0;

 cntenc |= (PPMU_CCNT_MASK | (PPMU_ENABLE << id));
 ret = regmap_write(info->regmap, PPMU_V2_CNTENC, cntenc);
 if (ret < 0)
  return ret;

 dev_dbg(&edev->dev, "%25s (load: %ld / %ld)\n", edev->desc->name,
     edata->load_count, edata->total_count);
 return 0;
}
