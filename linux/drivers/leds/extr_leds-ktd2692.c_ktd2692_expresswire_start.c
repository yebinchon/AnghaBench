
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktd2692_context {int ctrl_gpio; } ;


 int KTD2692_HIGH ;
 int KTD2692_TIME_DATA_START_TIME_US ;
 int gpiod_direction_output (int ,int ) ;
 int udelay (int ) ;

__attribute__((used)) static void ktd2692_expresswire_start(struct ktd2692_context *led)
{
 gpiod_direction_output(led->ctrl_gpio, KTD2692_HIGH);
 udelay(KTD2692_TIME_DATA_START_TIME_US);
}
