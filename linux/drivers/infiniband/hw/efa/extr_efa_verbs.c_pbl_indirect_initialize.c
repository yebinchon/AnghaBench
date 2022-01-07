
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct scatterlist {int dummy; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_6__ {int sg_dma_cnt; TYPE_1__ chunk_list; struct scatterlist* sgl; int pbl_buf_size_in_pages; } ;
struct TYPE_7__ {TYPE_2__ indirect; } ;
struct pbl_context {TYPE_3__ phys; int pbl_buf_size_in_bytes; int pbl_buf; } ;
struct efa_dev {TYPE_4__* pdev; int ibdev; } ;
struct TYPE_8__ {int dev; } ;


 int BUILD_BUG_ON (int) ;
 int DIV_ROUND_UP (int ,scalar_t__) ;
 int DMA_TO_DEVICE ;
 scalar_t__ EFA_CHUNK_PAYLOAD_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ PAGE_SIZE ;
 int dma_map_sg (int *,struct scatterlist*,int ,int ) ;
 int dma_unmap_sg (int *,struct scatterlist*,int ,int ) ;
 struct scatterlist* efa_vmalloc_buf_to_sg (int ,int ) ;
 int ibdev_dbg (int *,char*,int,...) ;
 int kfree (struct scatterlist*) ;
 int pbl_chunk_list_create (struct efa_dev*,struct pbl_context*) ;

__attribute__((used)) static int pbl_indirect_initialize(struct efa_dev *dev, struct pbl_context *pbl)
{
 u32 size_in_pages = DIV_ROUND_UP(pbl->pbl_buf_size_in_bytes, PAGE_SIZE);
 struct scatterlist *sgl;
 int sg_dma_cnt, err;

 BUILD_BUG_ON(EFA_CHUNK_PAYLOAD_SIZE > PAGE_SIZE);
 sgl = efa_vmalloc_buf_to_sg(pbl->pbl_buf, size_in_pages);
 if (!sgl)
  return -ENOMEM;

 sg_dma_cnt = dma_map_sg(&dev->pdev->dev, sgl, size_in_pages, DMA_TO_DEVICE);
 if (!sg_dma_cnt) {
  err = -EINVAL;
  goto err_map;
 }

 pbl->phys.indirect.pbl_buf_size_in_pages = size_in_pages;
 pbl->phys.indirect.sgl = sgl;
 pbl->phys.indirect.sg_dma_cnt = sg_dma_cnt;
 err = pbl_chunk_list_create(dev, pbl);
 if (err) {
  ibdev_dbg(&dev->ibdev,
     "chunk_list creation failed[%d]\n", err);
  goto err_chunk;
 }

 ibdev_dbg(&dev->ibdev,
    "pbl indirect - size[%u], chunks[%u]\n",
    pbl->pbl_buf_size_in_bytes,
    pbl->phys.indirect.chunk_list.size);

 return 0;

err_chunk:
 dma_unmap_sg(&dev->pdev->dev, sgl, size_in_pages, DMA_TO_DEVICE);
err_map:
 kfree(sgl);
 return err;
}
