
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mfd_cell {size_t id; } ;
struct led_classdev {TYPE_1__* dev; } ;
struct asic3 {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_3__ {int parent; } ;


 scalar_t__ ASIC3_LED_AutoStopCount ;
 scalar_t__ ASIC3_LED_DutyTime ;
 scalar_t__ ASIC3_LED_PeriodTime ;
 scalar_t__ ASIC3_LED_TimeBase ;
 int LED_EN ;
 int LED_OFF ;
 int asic3_write_register (struct asic3*,scalar_t__,int) ;
 struct asic3* dev_get_drvdata (int ) ;
 unsigned int* led_n_base ;
 struct mfd_cell* mfd_get_cell (struct platform_device*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static void brightness_set(struct led_classdev *cdev,
 enum led_brightness value)
{
 struct platform_device *pdev = to_platform_device(cdev->dev->parent);
 const struct mfd_cell *cell = mfd_get_cell(pdev);
 struct asic3 *asic = dev_get_drvdata(pdev->dev.parent);
 u32 timebase;
 unsigned int base;

 timebase = (value == LED_OFF) ? 0 : (LED_EN|0x4);

 base = led_n_base[cell->id];
 asic3_write_register(asic, (base + ASIC3_LED_PeriodTime), 32);
 asic3_write_register(asic, (base + ASIC3_LED_DutyTime), 32);
 asic3_write_register(asic, (base + ASIC3_LED_AutoStopCount), 0);
 asic3_write_register(asic, (base + ASIC3_LED_TimeBase), timebase);
}
