
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_ppmu {int regmap; } ;
struct devfreq_event_dev {TYPE_1__* desc; int dev; } ;
struct devfreq_event_data {unsigned int total_count; unsigned int load_count; } ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 int PPMU_CCNT ;
 int PPMU_CCNT_MASK ;
 int PPMU_CNTENC ;
 int PPMU_ENABLE ;
 int PPMU_PMCNT3_HIGH ;
 int PPMU_PMCNT3_LOW ;
 int PPMU_PMNC ;




 int PPMU_PMNCT (int) ;
 unsigned int PPMU_PMNC_ENABLE_MASK ;
 int dev_dbg (int *,char*,int ,unsigned int,unsigned int) ;
 struct exynos_ppmu* devfreq_event_get_drvdata (struct devfreq_event_dev*) ;
 int exynos_ppmu_find_ppmu_id (struct devfreq_event_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int exynos_ppmu_get_event(struct devfreq_event_dev *edev,
    struct devfreq_event_data *edata)
{
 struct exynos_ppmu *info = devfreq_event_get_drvdata(edev);
 int id = exynos_ppmu_find_ppmu_id(edev);
 unsigned int total_count, load_count;
 unsigned int pmcnt3_high, pmcnt3_low;
 unsigned int pmnc, cntenc;
 int ret;

 if (id < 0)
  return -EINVAL;


 ret = regmap_read(info->regmap, PPMU_PMNC, &pmnc);
 if (ret < 0)
  return ret;

 pmnc &= ~PPMU_PMNC_ENABLE_MASK;
 ret = regmap_write(info->regmap, PPMU_PMNC, pmnc);
 if (ret < 0)
  return ret;


 ret = regmap_read(info->regmap, PPMU_CCNT, &total_count);
 if (ret < 0)
  return ret;
 edata->total_count = total_count;


 switch (id) {
 case 131:
 case 130:
 case 129:
  ret = regmap_read(info->regmap, PPMU_PMNCT(id), &load_count);
  if (ret < 0)
   return ret;
  edata->load_count = load_count;
  break;
 case 128:
  ret = regmap_read(info->regmap, PPMU_PMCNT3_HIGH, &pmcnt3_high);
  if (ret < 0)
   return ret;

  ret = regmap_read(info->regmap, PPMU_PMCNT3_LOW, &pmcnt3_low);
  if (ret < 0)
   return ret;

  edata->load_count = ((pmcnt3_high << 8) | pmcnt3_low);
  break;
 default:
  return -EINVAL;
 }


 ret = regmap_read(info->regmap, PPMU_CNTENC, &cntenc);
 if (ret < 0)
  return ret;

 cntenc |= (PPMU_CCNT_MASK | (PPMU_ENABLE << id));
 ret = regmap_write(info->regmap, PPMU_CNTENC, cntenc);
 if (ret < 0)
  return ret;

 dev_dbg(&edev->dev, "%s (event: %ld/%ld)\n", edev->desc->name,
     edata->load_count, edata->total_count);

 return 0;
}
