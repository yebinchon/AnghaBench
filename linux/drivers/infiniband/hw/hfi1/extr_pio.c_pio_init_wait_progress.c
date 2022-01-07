
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {scalar_t__ icode; } ;


 int EIO ;
 int ETIMEDOUT ;
 scalar_t__ ICODE_FPGA_EMULATION ;
 int SEND_PIO_INIT_CTXT ;
 int SEND_PIO_INIT_CTXT_PIO_INIT_ERR_SMASK ;
 int SEND_PIO_INIT_CTXT_PIO_INIT_IN_PROGRESS_SMASK ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int pio_init_wait_progress(struct hfi1_devdata *dd)
{
 u64 reg;
 int max, count = 0;


 max = (dd->icode == ICODE_FPGA_EMULATION) ? 120 : 5;
 while (1) {
  reg = read_csr(dd, SEND_PIO_INIT_CTXT);
  if (!(reg & SEND_PIO_INIT_CTXT_PIO_INIT_IN_PROGRESS_SMASK))
   break;
  if (count >= max)
   return -ETIMEDOUT;
  udelay(5);
  count++;
 }

 return reg & SEND_PIO_INIT_CTXT_PIO_INIT_ERR_SMASK ? -EIO : 0;
}
