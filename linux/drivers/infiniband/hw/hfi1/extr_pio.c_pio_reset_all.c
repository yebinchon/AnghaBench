
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int EIO ;
 int ETIMEDOUT ;
 int SEND_PIO_ERR_CLEAR ;
 int SEND_PIO_ERR_CLEAR_PIO_INIT_SM_IN_ERR_SMASK ;
 int SEND_PIO_INIT_CTXT ;
 int SEND_PIO_INIT_CTXT_PIO_ALL_CTXT_INIT_SMASK ;
 int dd_dev_err (struct hfi1_devdata*,char*,char*) ;
 int pio_init_wait_progress (struct hfi1_devdata*) ;
 int udelay (int) ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

void pio_reset_all(struct hfi1_devdata *dd)
{
 int ret;


 ret = pio_init_wait_progress(dd);

 if (ret == -EIO) {

  write_csr(dd, SEND_PIO_ERR_CLEAR,
     SEND_PIO_ERR_CLEAR_PIO_INIT_SM_IN_ERR_SMASK);
 }


 write_csr(dd, SEND_PIO_INIT_CTXT,
    SEND_PIO_INIT_CTXT_PIO_ALL_CTXT_INIT_SMASK);
 udelay(2);
 ret = pio_init_wait_progress(dd);
 if (ret < 0) {
  dd_dev_err(dd,
      "PIO send context init %s while initializing all PIO blocks\n",
      ret == -ETIMEDOUT ? "is stuck" : "had an error");
 }
}
