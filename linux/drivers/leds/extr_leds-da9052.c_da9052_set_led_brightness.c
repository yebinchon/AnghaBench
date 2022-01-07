
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct da9052_led {size_t led_index; TYPE_1__* da9052; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {int dev; } ;


 int DA9052_LED_CONT_DIM ;
 int da9052_reg_write (TYPE_1__*,int ,int) ;
 int dev_err (int ,char*,int) ;
 int * led_reg ;

__attribute__((used)) static int da9052_set_led_brightness(struct da9052_led *led,
         enum led_brightness brightness)
{
 u8 val;
 int error;

 val = (brightness & 0x7f) | DA9052_LED_CONT_DIM;

 error = da9052_reg_write(led->da9052, led_reg[led->led_index], val);
 if (error < 0)
  dev_err(led->da9052->dev, "Failed to set led brightness, %d\n",
   error);
 return error;
}
