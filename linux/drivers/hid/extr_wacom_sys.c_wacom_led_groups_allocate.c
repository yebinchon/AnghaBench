
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wacom_group_leds {int dummy; } ;
struct TYPE_4__ {int count; struct wacom_group_leds* groups; } ;
struct wacom {TYPE_2__ led; TYPE_1__* hdev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_add_action_or_reset (struct device*,int ,struct wacom*) ;
 struct wacom_group_leds* devm_kcalloc (struct device*,int,int,int ) ;
 int wacom_led_groups_release ;

__attribute__((used)) static int wacom_led_groups_allocate(struct wacom *wacom, int count)
{
 struct device *dev = &wacom->hdev->dev;
 struct wacom_group_leds *groups;
 int error;

 groups = devm_kcalloc(dev, count, sizeof(struct wacom_group_leds),
         GFP_KERNEL);
 if (!groups)
  return -ENOMEM;

 error = devm_add_action_or_reset(dev, wacom_led_groups_release, wacom);
 if (error)
  return error;

 wacom->led.groups = groups;
 wacom->led.count = count;

 return 0;
}
