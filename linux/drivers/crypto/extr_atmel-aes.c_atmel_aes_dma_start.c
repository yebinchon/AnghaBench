
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct scatterlist {int dummy; } ;
struct TYPE_3__ {int max_burst_size; } ;
struct atmel_aes_dev {int resume; TYPE_1__ caps; TYPE_2__* ctx; } ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;
typedef int atmel_aes_fn_t ;
struct TYPE_4__ {int block_size; } ;







 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_SLAVE_BUSWIDTH_1_BYTE ;
 int DMA_SLAVE_BUSWIDTH_2_BYTES ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int EINPROGRESS ;
 int EINVAL ;
 int atmel_aes_complete (struct atmel_aes_dev*,int) ;
 int atmel_aes_dma_transfer_start (struct atmel_aes_dev*,int,int ,int) ;
 int atmel_aes_dma_transfer_stop (struct atmel_aes_dev*,int ) ;
 int atmel_aes_map (struct atmel_aes_dev*,struct scatterlist*,struct scatterlist*,size_t) ;
 int atmel_aes_unmap (struct atmel_aes_dev*) ;

__attribute__((used)) static int atmel_aes_dma_start(struct atmel_aes_dev *dd,
          struct scatterlist *src,
          struct scatterlist *dst,
          size_t len,
          atmel_aes_fn_t resume)
{
 enum dma_slave_buswidth addr_width;
 u32 maxburst;
 int err;

 switch (dd->ctx->block_size) {
 case 128:
  addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
  maxburst = 1;
  break;

 case 131:
  addr_width = DMA_SLAVE_BUSWIDTH_2_BYTES;
  maxburst = 1;
  break;

 case 130:
 case 129:
  addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
  maxburst = 1;
  break;

 case 132:
  addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
  maxburst = dd->caps.max_burst_size;
  break;

 default:
  err = -EINVAL;
  goto exit;
 }

 err = atmel_aes_map(dd, src, dst, len);
 if (err)
  goto exit;

 dd->resume = resume;


 err = atmel_aes_dma_transfer_start(dd, addr_width, DMA_DEV_TO_MEM,
        maxburst);
 if (err)
  goto unmap;


 err = atmel_aes_dma_transfer_start(dd, addr_width, DMA_MEM_TO_DEV,
        maxburst);
 if (err)
  goto output_transfer_stop;

 return -EINPROGRESS;

output_transfer_stop:
 atmel_aes_dma_transfer_stop(dd, DMA_DEV_TO_MEM);
unmap:
 atmel_aes_unmap(dd);
exit:
 return atmel_aes_complete(dd, err);
}
