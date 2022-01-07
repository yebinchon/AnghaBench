
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int PSC_DATA_VL_DISABLE ;
 scalar_t__ is_ax (struct hfi1_devdata*) ;
 int pio_send_control (struct hfi1_devdata*,int ) ;

__attribute__((used)) static int disable_data_vls(struct hfi1_devdata *dd)
{
 if (is_ax(dd))
  return 1;

 pio_send_control(dd, PSC_DATA_VL_DISABLE);

 return 0;
}
