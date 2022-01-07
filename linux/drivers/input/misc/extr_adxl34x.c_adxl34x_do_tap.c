
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adxl34x_platform_data {int dummy; } ;
struct adxl34x {int input; } ;


 int adxl34x_send_key_events (struct adxl34x*,struct adxl34x_platform_data*,int,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void adxl34x_do_tap(struct adxl34x *ac,
  struct adxl34x_platform_data *pdata, int status)
{
 adxl34x_send_key_events(ac, pdata, status, 1);
 input_sync(ac->input);
 adxl34x_send_key_events(ac, pdata, status, 0);
}
