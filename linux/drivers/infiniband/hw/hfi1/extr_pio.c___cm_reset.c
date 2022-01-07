
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {int dummy; } ;


 int SEND_CTRL ;
 int SEND_CTRL_CM_RESET_SMASK ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int udelay (int) ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

void __cm_reset(struct hfi1_devdata *dd, u64 sendctrl)
{
 write_csr(dd, SEND_CTRL, sendctrl | SEND_CTRL_CM_RESET_SMASK);
 while (1) {
  udelay(1);
  sendctrl = read_csr(dd, SEND_CTRL);
  if ((sendctrl & SEND_CTRL_CM_RESET_SMASK) == 0)
   break;
 }
}
