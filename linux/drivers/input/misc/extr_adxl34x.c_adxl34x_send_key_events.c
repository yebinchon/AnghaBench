
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adxl34x_platform_data {int * ev_code_tap; } ;
struct adxl34x {int input; } ;


 int ADXL_X_AXIS ;
 int ADXL_Z_AXIS ;
 int input_report_key (int ,int ,int) ;

__attribute__((used)) static void adxl34x_send_key_events(struct adxl34x *ac,
  struct adxl34x_platform_data *pdata, int status, int press)
{
 int i;

 for (i = ADXL_X_AXIS; i <= ADXL_Z_AXIS; i++) {
  if (status & (1 << (ADXL_Z_AXIS - i)))
   input_report_key(ac->input,
      pdata->ev_code_tap[i], press);
 }
}
