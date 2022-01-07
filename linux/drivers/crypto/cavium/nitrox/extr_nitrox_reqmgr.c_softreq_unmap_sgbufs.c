
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sgmap_cnt; int * sg; int sgcomp; int sgcomp_len; int sgcomp_dma; } ;
struct TYPE_3__ {int sgmap_cnt; int * sg; int sgcomp; int sgcomp_len; int sgcomp_dma; } ;
struct nitrox_softreq {TYPE_2__ out; TYPE_1__ in; struct nitrox_device* ndev; } ;
struct nitrox_device {int dummy; } ;
struct device {int dummy; } ;


 struct device* DEV (struct nitrox_device*) ;
 int DMA_BIDIRECTIONAL ;
 int DMA_TO_DEVICE ;
 int dma_unmap_sg (struct device*,int *,int ,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void softreq_unmap_sgbufs(struct nitrox_softreq *sr)
{
 struct nitrox_device *ndev = sr->ndev;
 struct device *dev = DEV(ndev);


 dma_unmap_sg(dev, sr->in.sg, sr->in.sgmap_cnt, DMA_BIDIRECTIONAL);
 dma_unmap_single(dev, sr->in.sgcomp_dma, sr->in.sgcomp_len,
    DMA_TO_DEVICE);
 kfree(sr->in.sgcomp);
 sr->in.sg = ((void*)0);
 sr->in.sgmap_cnt = 0;

 dma_unmap_sg(dev, sr->out.sg, sr->out.sgmap_cnt,
       DMA_BIDIRECTIONAL);
 dma_unmap_single(dev, sr->out.sgcomp_dma, sr->out.sgcomp_len,
    DMA_TO_DEVICE);
 kfree(sr->out.sgcomp);
 sr->out.sg = ((void*)0);
 sr->out.sgmap_cnt = 0;
}
