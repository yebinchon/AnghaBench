
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct nsa320_hwmon {int update_lock; void* data; void* clk; void* act; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 void* devm_gpiod_get (int *,char*,int ) ;
 struct device* devm_hwmon_device_register_with_groups (int *,char*,struct nsa320_hwmon*,int ) ;
 struct nsa320_hwmon* devm_kzalloc (int *,int,int ) ;
 int mutex_init (int *) ;
 int nsa320_groups ;

__attribute__((used)) static int nsa320_hwmon_probe(struct platform_device *pdev)
{
 struct nsa320_hwmon *hwmon;
 struct device *classdev;

 hwmon = devm_kzalloc(&pdev->dev, sizeof(*hwmon), GFP_KERNEL);
 if (!hwmon)
  return -ENOMEM;


 hwmon->act = devm_gpiod_get(&pdev->dev, "act", GPIOD_OUT_LOW);
 if (IS_ERR(hwmon->act))
  return PTR_ERR(hwmon->act);

 hwmon->clk = devm_gpiod_get(&pdev->dev, "clk", GPIOD_OUT_HIGH);
 if (IS_ERR(hwmon->clk))
  return PTR_ERR(hwmon->clk);

 hwmon->data = devm_gpiod_get(&pdev->dev, "data", GPIOD_IN);
 if (IS_ERR(hwmon->data))
  return PTR_ERR(hwmon->data);

 mutex_init(&hwmon->update_lock);

 classdev = devm_hwmon_device_register_with_groups(&pdev->dev,
     "nsa320", hwmon, nsa320_groups);

 return PTR_ERR_OR_ZERO(classdev);

}
