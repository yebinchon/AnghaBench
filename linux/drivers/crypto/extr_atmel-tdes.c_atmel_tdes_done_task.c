
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_tdes_dev {int flags; int err; void* out_sg; void* in_sg; scalar_t__ total; } ;


 int EINVAL ;
 int TDES_FLAGS_DMA ;
 int TDES_FLAGS_FAST ;
 int atmel_tdes_crypt_dma_stop (struct atmel_tdes_dev*) ;
 int atmel_tdes_crypt_pdc_stop (struct atmel_tdes_dev*) ;
 int atmel_tdes_crypt_start (struct atmel_tdes_dev*) ;
 int atmel_tdes_finish_req (struct atmel_tdes_dev*,int) ;
 int atmel_tdes_handle_queue (struct atmel_tdes_dev*,int *) ;
 void* sg_next (void*) ;

__attribute__((used)) static void atmel_tdes_done_task(unsigned long data)
{
 struct atmel_tdes_dev *dd = (struct atmel_tdes_dev *) data;
 int err;

 if (!(dd->flags & TDES_FLAGS_DMA))
  err = atmel_tdes_crypt_pdc_stop(dd);
 else
  err = atmel_tdes_crypt_dma_stop(dd);

 err = dd->err ? : err;

 if (dd->total && !err) {
  if (dd->flags & TDES_FLAGS_FAST) {
   dd->in_sg = sg_next(dd->in_sg);
   dd->out_sg = sg_next(dd->out_sg);
   if (!dd->in_sg || !dd->out_sg)
    err = -EINVAL;
  }
  if (!err)
   err = atmel_tdes_crypt_start(dd);
  if (!err)
   return;
 }

 atmel_tdes_finish_req(dd, err);
 atmel_tdes_handle_queue(dd, ((void*)0));
}
