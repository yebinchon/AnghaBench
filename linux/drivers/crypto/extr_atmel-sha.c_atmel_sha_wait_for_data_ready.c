
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_sha_dev {int (* resume ) (struct atmel_sha_dev*) ;} ;
typedef int (* atmel_sha_fn_t ) (struct atmel_sha_dev*) ;


 int EINPROGRESS ;
 int SHA_IER ;
 int SHA_INT_DATARDY ;
 int SHA_ISR ;
 int atmel_sha_read (struct atmel_sha_dev*,int ) ;
 int atmel_sha_write (struct atmel_sha_dev*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int atmel_sha_wait_for_data_ready(struct atmel_sha_dev *dd,
      atmel_sha_fn_t resume)
{
 u32 isr = atmel_sha_read(dd, SHA_ISR);

 if (unlikely(isr & SHA_INT_DATARDY))
  return resume(dd);

 dd->resume = resume;
 atmel_sha_write(dd, SHA_IER, SHA_INT_DATARDY);
 return -EINPROGRESS;
}
