
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_dev {int flags; int err; int req; } ;


 int EINPROGRESS ;
 int SHA_FLAGS_CPU ;
 int SHA_FLAGS_DMA_ACTIVE ;
 int SHA_FLAGS_DMA_READY ;
 int SHA_FLAGS_OUTPUT_READY ;
 int atmel_sha_finish_req (int ,int) ;
 int atmel_sha_update_dma_start (struct atmel_sha_dev*) ;
 int atmel_sha_update_dma_stop (struct atmel_sha_dev*) ;

__attribute__((used)) static int atmel_sha_done(struct atmel_sha_dev *dd)
{
 int err = 0;

 if (SHA_FLAGS_CPU & dd->flags) {
  if (SHA_FLAGS_OUTPUT_READY & dd->flags) {
   dd->flags &= ~SHA_FLAGS_OUTPUT_READY;
   goto finish;
  }
 } else if (SHA_FLAGS_DMA_READY & dd->flags) {
  if (SHA_FLAGS_DMA_ACTIVE & dd->flags) {
   dd->flags &= ~SHA_FLAGS_DMA_ACTIVE;
   atmel_sha_update_dma_stop(dd);
   if (dd->err) {
    err = dd->err;
    goto finish;
   }
  }
  if (SHA_FLAGS_OUTPUT_READY & dd->flags) {

   dd->flags &= ~(SHA_FLAGS_DMA_READY |
      SHA_FLAGS_OUTPUT_READY);
   err = atmel_sha_update_dma_start(dd);
   if (err != -EINPROGRESS)
    goto finish;
  }
 }
 return err;

finish:

 atmel_sha_finish_req(dd->req, err);

 return err;
}
