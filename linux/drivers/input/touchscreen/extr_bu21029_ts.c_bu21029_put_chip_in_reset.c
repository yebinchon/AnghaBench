
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bu21029_ts_data {scalar_t__ reset_gpios; } ;


 int STOP_DELAY_MAX_US ;
 int STOP_DELAY_MIN_US ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static void bu21029_put_chip_in_reset(struct bu21029_ts_data *bu21029)
{
 if (bu21029->reset_gpios) {
  gpiod_set_value_cansleep(bu21029->reset_gpios, 1);
  usleep_range(STOP_DELAY_MIN_US, STOP_DELAY_MAX_US);
 }
}
