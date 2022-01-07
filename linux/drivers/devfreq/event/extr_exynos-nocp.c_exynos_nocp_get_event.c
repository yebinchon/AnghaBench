
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_nocp {int dev; int regmap; } ;
struct devfreq_event_dev {TYPE_1__* desc; int dev; } ;
struct devfreq_event_data {unsigned int load_count; unsigned int total_count; } ;
struct TYPE_2__ {int name; } ;


 int NOCP_COUNTERS_0_VAL ;
 int NOCP_COUNTERS_1_VAL ;
 int NOCP_COUNTERS_2_VAL ;
 int NOCP_COUNTERS_3_VAL ;
 int dev_dbg (int *,char*,int ,unsigned int,unsigned int) ;
 int dev_err (int ,char*) ;
 struct exynos_nocp* devfreq_event_get_drvdata (struct devfreq_event_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int exynos_nocp_get_event(struct devfreq_event_dev *edev,
    struct devfreq_event_data *edata)
{
 struct exynos_nocp *nocp = devfreq_event_get_drvdata(edev);
 unsigned int counter[4];
 int ret;


 ret = regmap_read(nocp->regmap, NOCP_COUNTERS_0_VAL, &counter[0]);
 if (ret < 0)
  goto out;

 ret = regmap_read(nocp->regmap, NOCP_COUNTERS_1_VAL, &counter[1]);
 if (ret < 0)
  goto out;

 ret = regmap_read(nocp->regmap, NOCP_COUNTERS_2_VAL, &counter[2]);
 if (ret < 0)
  goto out;

 ret = regmap_read(nocp->regmap, NOCP_COUNTERS_3_VAL, &counter[3]);
 if (ret < 0)
  goto out;

 edata->load_count = ((counter[1] << 16) | counter[0]);
 edata->total_count = ((counter[3] << 16) | counter[2]);

 dev_dbg(&edev->dev, "%s (event: %ld/%ld)\n", edev->desc->name,
     edata->load_count, edata->total_count);

 return 0;

out:
 dev_err(nocp->dev, "Failed to read the counter of NoC probe device\n");

 return ret;
}
