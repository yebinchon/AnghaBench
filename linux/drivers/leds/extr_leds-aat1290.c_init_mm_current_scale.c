
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aat1290_led_config_data {int max_flash_current; } ;
struct aat1290_led {int* mm_current_scale; TYPE_1__* pdev; } ;
typedef int max_mm_current_percent ;
struct TYPE_2__ {int dev; } ;


 int AAT1290_MAX_MM_CURRENT (int ) ;
 int AAT1290_MM_CURRENT_SCALE_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int* devm_kzalloc (int *,int,int ) ;

__attribute__((used)) static int init_mm_current_scale(struct aat1290_led *led,
   struct aat1290_led_config_data *cfg)
{
 static const int max_mm_current_percent[] = {
  20, 22, 25, 28, 32, 36, 40, 45, 50, 56,
  63, 71, 79, 89, 100
 };
 int i, max_mm_current =
   AAT1290_MAX_MM_CURRENT(cfg->max_flash_current);

 led->mm_current_scale = devm_kzalloc(&led->pdev->dev,
     sizeof(max_mm_current_percent),
     GFP_KERNEL);
 if (!led->mm_current_scale)
  return -ENOMEM;

 for (i = 0; i < AAT1290_MM_CURRENT_SCALE_SIZE; ++i)
  led->mm_current_scale[i] = max_mm_current *
       max_mm_current_percent[i] / 100;

 return 0;
}
