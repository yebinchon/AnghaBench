
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_4__ {int nents; struct scatterlist* sg; void* sg_len; scalar_t__ remainder; } ;
struct atmel_aes_dev {size_t total; size_t buflen; TYPE_2__ src; int dev; TYPE_2__ dst; int buf; struct scatterlist aligned_sg; TYPE_1__* ctx; struct scatterlist* real_dst; } ;
struct TYPE_3__ {int block_size; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EFAULT ;
 int ENOMEM ;
 int atmel_aes_check_aligned (struct atmel_aes_dev*,struct scatterlist*,size_t,TYPE_2__*) ;
 size_t atmel_aes_padlen (size_t,int ) ;
 void* dma_map_sg (int ,struct scatterlist*,int,int ) ;
 int dma_unmap_sg (int ,struct scatterlist*,int,int ) ;
 int sg_copy_to_buffer (struct scatterlist*,int ,int ,size_t) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_nents (struct scatterlist*) ;
 int sg_set_buf (struct scatterlist*,int ,size_t) ;

__attribute__((used)) static int atmel_aes_map(struct atmel_aes_dev *dd,
    struct scatterlist *src,
    struct scatterlist *dst,
    size_t len)
{
 bool src_aligned, dst_aligned;
 size_t padlen;

 dd->total = len;
 dd->src.sg = src;
 dd->dst.sg = dst;
 dd->real_dst = dst;

 src_aligned = atmel_aes_check_aligned(dd, src, len, &dd->src);
 if (src == dst)
  dst_aligned = src_aligned;
 else
  dst_aligned = atmel_aes_check_aligned(dd, dst, len, &dd->dst);
 if (!src_aligned || !dst_aligned) {
  padlen = atmel_aes_padlen(len, dd->ctx->block_size);

  if (dd->buflen < len + padlen)
   return -ENOMEM;

  if (!src_aligned) {
   sg_copy_to_buffer(src, sg_nents(src), dd->buf, len);
   dd->src.sg = &dd->aligned_sg;
   dd->src.nents = 1;
   dd->src.remainder = 0;
  }

  if (!dst_aligned) {
   dd->dst.sg = &dd->aligned_sg;
   dd->dst.nents = 1;
   dd->dst.remainder = 0;
  }

  sg_init_table(&dd->aligned_sg, 1);
  sg_set_buf(&dd->aligned_sg, dd->buf, len + padlen);
 }

 if (dd->src.sg == dd->dst.sg) {
  dd->src.sg_len = dma_map_sg(dd->dev, dd->src.sg, dd->src.nents,
         DMA_BIDIRECTIONAL);
  dd->dst.sg_len = dd->src.sg_len;
  if (!dd->src.sg_len)
   return -EFAULT;
 } else {
  dd->src.sg_len = dma_map_sg(dd->dev, dd->src.sg, dd->src.nents,
         DMA_TO_DEVICE);
  if (!dd->src.sg_len)
   return -EFAULT;

  dd->dst.sg_len = dma_map_sg(dd->dev, dd->dst.sg, dd->dst.nents,
         DMA_FROM_DEVICE);
  if (!dd->dst.sg_len) {
   dma_unmap_sg(dd->dev, dd->src.sg, dd->src.nents,
         DMA_TO_DEVICE);
   return -EFAULT;
  }
 }

 return 0;
}
