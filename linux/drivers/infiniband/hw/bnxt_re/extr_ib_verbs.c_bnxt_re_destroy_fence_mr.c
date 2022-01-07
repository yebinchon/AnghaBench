
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct bnxt_re_fence_data {scalar_t__ dma_addr; struct bnxt_re_mr* mr; int * mw; } ;
struct bnxt_re_pd {struct bnxt_re_dev* rdev; struct bnxt_re_fence_data fence; } ;
struct TYPE_6__ {scalar_t__ lkey; scalar_t__ rkey; } ;
struct bnxt_re_mr {int qplib_mr; TYPE_3__ ib_mr; } ;
struct bnxt_re_dev {int qplib_res; TYPE_2__* en_dev; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {struct device dev; } ;


 int BNXT_RE_FENCE_BYTES ;
 int DMA_BIDIRECTIONAL ;
 int bnxt_qplib_dereg_mrw (int *,int *,int) ;
 int bnxt_qplib_free_mrw (int *,int *) ;
 int bnxt_re_dealloc_mw (int *) ;
 int dma_unmap_single (struct device*,scalar_t__,int ,int ) ;
 int kfree (struct bnxt_re_mr*) ;

__attribute__((used)) static void bnxt_re_destroy_fence_mr(struct bnxt_re_pd *pd)
{
 struct bnxt_re_fence_data *fence = &pd->fence;
 struct bnxt_re_dev *rdev = pd->rdev;
 struct device *dev = &rdev->en_dev->pdev->dev;
 struct bnxt_re_mr *mr = fence->mr;

 if (fence->mw) {
  bnxt_re_dealloc_mw(fence->mw);
  fence->mw = ((void*)0);
 }
 if (mr) {
  if (mr->ib_mr.rkey)
   bnxt_qplib_dereg_mrw(&rdev->qplib_res, &mr->qplib_mr,
          1);
  if (mr->ib_mr.lkey)
   bnxt_qplib_free_mrw(&rdev->qplib_res, &mr->qplib_mr);
  kfree(mr);
  fence->mr = ((void*)0);
 }
 if (fence->dma_addr) {
  dma_unmap_single(dev, fence->dma_addr, BNXT_RE_FENCE_BYTES,
     DMA_BIDIRECTIONAL);
  fence->dma_addr = 0;
 }
}
