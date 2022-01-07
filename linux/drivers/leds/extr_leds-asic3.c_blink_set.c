
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mfd_cell {size_t id; } ;
struct led_classdev {TYPE_1__* dev; } ;
struct asic3 {int dummy; } ;
struct TYPE_3__ {int parent; } ;


 scalar_t__ ASIC3_LED_AutoStopCount ;
 scalar_t__ ASIC3_LED_DutyTime ;
 scalar_t__ ASIC3_LED_PeriodTime ;
 scalar_t__ ASIC3_LED_TimeBase ;
 unsigned long CLK_TO_MS (scalar_t__) ;
 int EINVAL ;
 int LED_EN ;
 scalar_t__ MAX_CLK ;
 unsigned long MAX_MS ;
 scalar_t__ MS_TO_CLK (unsigned long) ;
 int asic3_write_register (struct asic3*,scalar_t__,int) ;
 struct asic3* dev_get_drvdata (int ) ;
 unsigned int* led_n_base ;
 struct mfd_cell* mfd_get_cell (struct platform_device*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int blink_set(struct led_classdev *cdev,
 unsigned long *delay_on,
 unsigned long *delay_off)
{
 struct platform_device *pdev = to_platform_device(cdev->dev->parent);
 const struct mfd_cell *cell = mfd_get_cell(pdev);
 struct asic3 *asic = dev_get_drvdata(pdev->dev.parent);
 u32 on;
 u32 off;
 unsigned int base;

 if (*delay_on > MAX_MS || *delay_off > MAX_MS)
  return -EINVAL;

 if (*delay_on == 0 && *delay_off == 0) {

  on = MS_TO_CLK(500);
  off = MS_TO_CLK(500);
 } else {
  on = MS_TO_CLK(*delay_on);
  off = MS_TO_CLK(*delay_off);
  if ((on + off) > MAX_CLK)
   return -EINVAL;
 }

 base = led_n_base[cell->id];
 asic3_write_register(asic, (base + ASIC3_LED_PeriodTime), (on + off));
 asic3_write_register(asic, (base + ASIC3_LED_DutyTime), on);
 asic3_write_register(asic, (base + ASIC3_LED_AutoStopCount), 0);
 asic3_write_register(asic, (base + ASIC3_LED_TimeBase), (LED_EN|0x4));

 *delay_on = CLK_TO_MS(on);
 *delay_off = CLK_TO_MS(off);

 return 0;
}
