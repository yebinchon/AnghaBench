
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct dev_pm_opp* devfreq; int cur_freq; } ;
struct panfrost_device {TYPE_2__* pdev; TYPE_1__ devfreq; int clock; } ;
struct dev_pm_opp {int dummy; } ;
struct TYPE_7__ {int initial_freq; } ;
struct TYPE_6__ {int dev; } ;


 int DEVFREQ_GOV_SIMPLE_ONDEMAND ;
 int DRM_DEV_ERROR (int *,char*) ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct dev_pm_opp*) ;
 int PTR_ERR (struct dev_pm_opp*) ;
 int clk_get_rate (int ) ;
 int dev_pm_opp_of_add_table (int *) ;
 int dev_pm_opp_of_remove_table (int *) ;
 int dev_pm_opp_put (struct dev_pm_opp*) ;
 struct dev_pm_opp* devfreq_recommended_opp (int *,int *,int ) ;
 struct dev_pm_opp* devm_devfreq_add_device (int *,TYPE_3__*,int ,int *) ;
 TYPE_3__ panfrost_devfreq_profile ;
 int panfrost_devfreq_reset (struct panfrost_device*) ;

int panfrost_devfreq_init(struct panfrost_device *pfdev)
{
 int ret;
 struct dev_pm_opp *opp;

 ret = dev_pm_opp_of_add_table(&pfdev->pdev->dev);
 if (ret == -ENODEV)
  return 0;
 else if (ret)
  return ret;

 panfrost_devfreq_reset(pfdev);

 pfdev->devfreq.cur_freq = clk_get_rate(pfdev->clock);

 opp = devfreq_recommended_opp(&pfdev->pdev->dev, &pfdev->devfreq.cur_freq, 0);
 if (IS_ERR(opp))
  return PTR_ERR(opp);

 panfrost_devfreq_profile.initial_freq = pfdev->devfreq.cur_freq;
 dev_pm_opp_put(opp);

 pfdev->devfreq.devfreq = devm_devfreq_add_device(&pfdev->pdev->dev,
   &panfrost_devfreq_profile, DEVFREQ_GOV_SIMPLE_ONDEMAND,
   ((void*)0));
 if (IS_ERR(pfdev->devfreq.devfreq)) {
  DRM_DEV_ERROR(&pfdev->pdev->dev, "Couldn't initialize GPU devfreq\n");
  ret = PTR_ERR(pfdev->devfreq.devfreq);
  pfdev->devfreq.devfreq = ((void*)0);
  dev_pm_opp_of_remove_table(&pfdev->pdev->dev);
  return ret;
 }

 return 0;
}
