
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_aes_dev {int data; scalar_t__ datalen; int (* resume ) (struct atmel_aes_dev*) ;int (* cpu_transfer_complete ) (struct atmel_aes_dev*) ;int total; int buf; int real_dst; } ;


 scalar_t__ AES_BLOCK_SIZE ;
 int AES_IDATAR (int ) ;
 int AES_IER ;
 int AES_INT_DATARDY ;
 int AES_ISR ;
 int AES_ODATAR (int ) ;
 int EINPROGRESS ;
 int EINVAL ;
 int atmel_aes_complete (struct atmel_aes_dev*,int) ;
 int atmel_aes_read (struct atmel_aes_dev*,int ) ;
 int atmel_aes_read_block (struct atmel_aes_dev*,int ,int) ;
 int atmel_aes_write (struct atmel_aes_dev*,int ,int) ;
 int atmel_aes_write_block (struct atmel_aes_dev*,int ,int) ;
 int sg_copy_from_buffer (int ,int ,int ,int ) ;
 int sg_nents (int ) ;
 int stub1 (struct atmel_aes_dev*) ;

__attribute__((used)) static int atmel_aes_cpu_transfer(struct atmel_aes_dev *dd)
{
 int err = 0;
 u32 isr;

 for (;;) {
  atmel_aes_read_block(dd, AES_ODATAR(0), dd->data);
  dd->data += 4;
  dd->datalen -= AES_BLOCK_SIZE;

  if (dd->datalen < AES_BLOCK_SIZE)
   break;

  atmel_aes_write_block(dd, AES_IDATAR(0), dd->data);

  isr = atmel_aes_read(dd, AES_ISR);
  if (!(isr & AES_INT_DATARDY)) {
   dd->resume = atmel_aes_cpu_transfer;
   atmel_aes_write(dd, AES_IER, AES_INT_DATARDY);
   return -EINPROGRESS;
  }
 }

 if (!sg_copy_from_buffer(dd->real_dst, sg_nents(dd->real_dst),
     dd->buf, dd->total))
  err = -EINVAL;

 if (err)
  return atmel_aes_complete(dd, err);

 return dd->cpu_transfer_complete(dd);
}
