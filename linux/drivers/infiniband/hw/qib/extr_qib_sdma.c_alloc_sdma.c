
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct qib_pportdata {int sdma_descq_cnt; scalar_t__ sdma_descq_phys; int * sdma_descq; TYPE_2__* dd; scalar_t__* sdma_head_dma; scalar_t__ sdma_head_phys; } ;
struct TYPE_4__ {TYPE_1__* pcidev; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 void* dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int dma_free_coherent (int *,int,void*,scalar_t__) ;
 int qib_dev_err (TYPE_2__*,char*) ;
 int sdma_descq_cnt ;

__attribute__((used)) static int alloc_sdma(struct qib_pportdata *ppd)
{
 ppd->sdma_descq_cnt = sdma_descq_cnt;
 if (!ppd->sdma_descq_cnt)
  ppd->sdma_descq_cnt = 256;


 ppd->sdma_descq = dma_alloc_coherent(&ppd->dd->pcidev->dev,
  ppd->sdma_descq_cnt * sizeof(u64[2]), &ppd->sdma_descq_phys,
  GFP_KERNEL);

 if (!ppd->sdma_descq) {
  qib_dev_err(ppd->dd,
   "failed to allocate SendDMA descriptor FIFO memory\n");
  goto bail;
 }


 ppd->sdma_head_dma = dma_alloc_coherent(&ppd->dd->pcidev->dev,
  PAGE_SIZE, &ppd->sdma_head_phys, GFP_KERNEL);
 if (!ppd->sdma_head_dma) {
  qib_dev_err(ppd->dd,
   "failed to allocate SendDMA head memory\n");
  goto cleanup_descq;
 }
 ppd->sdma_head_dma[0] = 0;
 return 0;

cleanup_descq:
 dma_free_coherent(&ppd->dd->pcidev->dev,
  ppd->sdma_descq_cnt * sizeof(u64[2]), (void *)ppd->sdma_descq,
  ppd->sdma_descq_phys);
 ppd->sdma_descq = ((void*)0);
 ppd->sdma_descq_phys = 0;
bail:
 ppd->sdma_descq_cnt = 0;
 return -ENOMEM;
}
