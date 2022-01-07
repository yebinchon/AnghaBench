
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_aes_dev {int hash_flags; int hash_req; } ;


 int HASH_FLAGS_BUSY ;
 int HASH_FLAGS_DMA_ACTIVE ;
 int HASH_FLAGS_DMA_READY ;
 int HASH_FLAGS_OUTPUT_READY ;
 int clear_bit (int ,int *) ;
 int s5p_hash_finish_req (int ,int ) ;
 int s5p_hash_handle_queue (struct s5p_aes_dev*,int *) ;
 int s5p_hash_update_dma_stop (struct s5p_aes_dev*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void s5p_hash_tasklet_cb(unsigned long data)
{
 struct s5p_aes_dev *dd = (struct s5p_aes_dev *)data;

 if (!test_bit(HASH_FLAGS_BUSY, &dd->hash_flags)) {
  s5p_hash_handle_queue(dd, ((void*)0));
  return;
 }

 if (test_bit(HASH_FLAGS_DMA_READY, &dd->hash_flags)) {
  if (test_and_clear_bit(HASH_FLAGS_DMA_ACTIVE,
           &dd->hash_flags)) {
   s5p_hash_update_dma_stop(dd);
  }

  if (test_and_clear_bit(HASH_FLAGS_OUTPUT_READY,
           &dd->hash_flags)) {

   clear_bit(HASH_FLAGS_DMA_READY, &dd->hash_flags);
   goto finish;
  }
 }

 return;

finish:

 s5p_hash_finish_req(dd->hash_req, 0);


 if (!test_bit(HASH_FLAGS_BUSY, &dd->hash_flags))
  s5p_hash_handle_queue(dd, ((void*)0));
}
