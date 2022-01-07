
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {scalar_t__ vl15buf_cached; } ;


 int PSC_CM_RESET ;
 scalar_t__ SEND_CM_CREDIT_VL ;
 scalar_t__ SEND_CM_CREDIT_VL15 ;
 scalar_t__ SEND_CM_GLOBAL_CREDIT ;
 int TXE_NUM_DATA_VL ;
 int pio_send_control (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,scalar_t__,int ) ;

void reset_link_credits(struct hfi1_devdata *dd)
{
 int i;


 for (i = 0; i < TXE_NUM_DATA_VL; i++)
  write_csr(dd, SEND_CM_CREDIT_VL + (8 * i), 0);
 write_csr(dd, SEND_CM_CREDIT_VL15, 0);
 write_csr(dd, SEND_CM_GLOBAL_CREDIT, 0);

 pio_send_control(dd, PSC_CM_RESET);

 dd->vl15buf_cached = 0;
}
