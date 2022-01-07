
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_tdes_dev {int buflen; void* buf_in; void* buf_out; void* dma_addr_in; int dev; void* dma_addr_out; } ;


 int DES_BLOCK_SIZE ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ __get_free_pages (int ,int ) ;
 int dev_err (int ,char*,...) ;
 void* dma_map_single (int ,void*,int,int ) ;
 scalar_t__ dma_mapping_error (int ,void*) ;
 int dma_unmap_single (int ,void*,int,int ) ;
 int free_page (unsigned long) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int atmel_tdes_buff_init(struct atmel_tdes_dev *dd)
{
 int err = -ENOMEM;

 dd->buf_in = (void *)__get_free_pages(GFP_KERNEL, 0);
 dd->buf_out = (void *)__get_free_pages(GFP_KERNEL, 0);
 dd->buflen = PAGE_SIZE;
 dd->buflen &= ~(DES_BLOCK_SIZE - 1);

 if (!dd->buf_in || !dd->buf_out) {
  dev_err(dd->dev, "unable to alloc pages.\n");
  goto err_alloc;
 }


 dd->dma_addr_in = dma_map_single(dd->dev, dd->buf_in,
     dd->buflen, DMA_TO_DEVICE);
 if (dma_mapping_error(dd->dev, dd->dma_addr_in)) {
  dev_err(dd->dev, "dma %zd bytes error\n", dd->buflen);
  err = -EINVAL;
  goto err_map_in;
 }

 dd->dma_addr_out = dma_map_single(dd->dev, dd->buf_out,
     dd->buflen, DMA_FROM_DEVICE);
 if (dma_mapping_error(dd->dev, dd->dma_addr_out)) {
  dev_err(dd->dev, "dma %zd bytes error\n", dd->buflen);
  err = -EINVAL;
  goto err_map_out;
 }

 return 0;

err_map_out:
 dma_unmap_single(dd->dev, dd->dma_addr_in, dd->buflen,
  DMA_TO_DEVICE);
err_map_in:
err_alloc:
 free_page((unsigned long)dd->buf_out);
 free_page((unsigned long)dd->buf_in);
 if (err)
  pr_err("error: %d\n", err);
 return err;
}
