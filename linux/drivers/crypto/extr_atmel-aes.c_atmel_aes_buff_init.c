
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_aes_dev {int buflen; int dev; void* buf; } ;


 int AES_BLOCK_SIZE ;
 int ATMEL_AES_BUFFER_ORDER ;
 int ATMEL_AES_BUFFER_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ __get_free_pages (int ,int ) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int atmel_aes_buff_init(struct atmel_aes_dev *dd)
{
 dd->buf = (void *)__get_free_pages(GFP_KERNEL, ATMEL_AES_BUFFER_ORDER);
 dd->buflen = ATMEL_AES_BUFFER_SIZE;
 dd->buflen &= ~(AES_BLOCK_SIZE - 1);

 if (!dd->buf) {
  dev_err(dd->dev, "unable to alloc pages.\n");
  return -ENOMEM;
 }

 return 0;
}
