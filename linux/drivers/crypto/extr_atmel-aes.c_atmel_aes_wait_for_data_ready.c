
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_aes_dev {int (* resume ) (struct atmel_aes_dev*) ;} ;
typedef int (* atmel_aes_fn_t ) (struct atmel_aes_dev*) ;


 int AES_IER ;
 int AES_INT_DATARDY ;
 int AES_ISR ;
 int EINPROGRESS ;
 int atmel_aes_read (struct atmel_aes_dev*,int ) ;
 int atmel_aes_write (struct atmel_aes_dev*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int atmel_aes_wait_for_data_ready(struct atmel_aes_dev *dd,
      atmel_aes_fn_t resume)
{
 u32 isr = atmel_aes_read(dd, AES_ISR);

 if (unlikely(isr & AES_INT_DATARDY))
  return resume(dd);

 dd->resume = resume;
 atmel_aes_write(dd, AES_IER, AES_INT_DATARDY);
 return -EINPROGRESS;
}
