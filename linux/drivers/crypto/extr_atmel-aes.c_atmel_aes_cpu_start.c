
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int dummy; } ;
struct atmel_aes_dev {size_t total; size_t datalen; int * data; scalar_t__ buf; int cpu_transfer_complete; struct scatterlist* real_dst; } ;
typedef int atmel_aes_fn_t ;


 int AES_BLOCK_SIZE ;
 int AES_IDATAR (int ) ;
 int EINVAL ;
 int atmel_aes_cpu_transfer ;
 size_t atmel_aes_padlen (size_t,int ) ;
 int atmel_aes_wait_for_data_ready (struct atmel_aes_dev*,int ) ;
 int atmel_aes_write_block (struct atmel_aes_dev*,int ,int *) ;
 int sg_copy_to_buffer (struct scatterlist*,int ,scalar_t__,size_t) ;
 int sg_nents (struct scatterlist*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int atmel_aes_cpu_start(struct atmel_aes_dev *dd,
          struct scatterlist *src,
          struct scatterlist *dst,
          size_t len,
          atmel_aes_fn_t resume)
{
 size_t padlen = atmel_aes_padlen(len, AES_BLOCK_SIZE);

 if (unlikely(len == 0))
  return -EINVAL;

 sg_copy_to_buffer(src, sg_nents(src), dd->buf, len);

 dd->total = len;
 dd->real_dst = dst;
 dd->cpu_transfer_complete = resume;
 dd->datalen = len + padlen;
 dd->data = (u32 *)dd->buf;
 atmel_aes_write_block(dd, AES_IDATAR(0), dd->data);
 return atmel_aes_wait_for_data_ready(dd, atmel_aes_cpu_transfer);
}
