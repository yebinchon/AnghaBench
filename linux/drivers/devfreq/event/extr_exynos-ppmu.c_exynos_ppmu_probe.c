
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int clk; } ;
struct exynos_ppmu {int num_events; TYPE_1__ ppmu; struct devfreq_event_dev** edev; struct devfreq_event_desc* desc; int * dev; } ;
struct devfreq_event_dev {int dummy; } ;
struct devfreq_event_desc {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct devfreq_event_dev*) ;
 int PTR_ERR (struct devfreq_event_dev*) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 struct devfreq_event_dev* devm_devfreq_event_add_edev (int *,struct devfreq_event_desc*) ;
 void* devm_kzalloc (int *,int,int ) ;
 int exynos_ppmu_parse_dt (struct platform_device*,struct exynos_ppmu*) ;
 int platform_set_drvdata (struct platform_device*,struct exynos_ppmu*) ;
 int pr_info (char*,int ,int ) ;

__attribute__((used)) static int exynos_ppmu_probe(struct platform_device *pdev)
{
 struct exynos_ppmu *info;
 struct devfreq_event_dev **edev;
 struct devfreq_event_desc *desc;
 int i, ret = 0, size;

 info = devm_kzalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->dev = &pdev->dev;


 ret = exynos_ppmu_parse_dt(pdev, info);
 if (ret < 0) {
  dev_err(&pdev->dev,
   "failed to parse devicetree for resource\n");
  return ret;
 }
 desc = info->desc;

 size = sizeof(struct devfreq_event_dev *) * info->num_events;
 info->edev = devm_kzalloc(&pdev->dev, size, GFP_KERNEL);
 if (!info->edev)
  return -ENOMEM;

 edev = info->edev;
 platform_set_drvdata(pdev, info);

 for (i = 0; i < info->num_events; i++) {
  edev[i] = devm_devfreq_event_add_edev(&pdev->dev, &desc[i]);
  if (IS_ERR(edev[i])) {
   ret = PTR_ERR(edev[i]);
   dev_err(&pdev->dev,
    "failed to add devfreq-event device\n");
   return PTR_ERR(edev[i]);
  }

  pr_info("exynos-ppmu: new PPMU device registered %s (%s)\n",
   dev_name(&pdev->dev), desc[i].name);
 }

 ret = clk_prepare_enable(info->ppmu.clk);
 if (ret) {
  dev_err(&pdev->dev, "failed to prepare ppmu clock\n");
  return ret;
 }

 return 0;
}
