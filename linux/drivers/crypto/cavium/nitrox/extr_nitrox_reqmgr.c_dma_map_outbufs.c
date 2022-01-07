
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_crypto_request {int * dst; } ;
struct TYPE_2__ {int sgmap_cnt; int * sg; } ;
struct nitrox_softreq {TYPE_1__ out; int ndev; } ;
struct device {int dummy; } ;


 struct device* DEV (int ) ;
 int DMA_BIDIRECTIONAL ;
 int EINVAL ;
 int create_sg_component (struct nitrox_softreq*,TYPE_1__*,int) ;
 int dma_map_sg (struct device*,int *,int ,int ) ;
 int dma_unmap_sg (struct device*,int *,int,int ) ;
 int sg_nents (int *) ;

__attribute__((used)) static int dma_map_outbufs(struct nitrox_softreq *sr,
      struct se_crypto_request *req)
{
 struct device *dev = DEV(sr->ndev);
 int nents, ret = 0;

 nents = dma_map_sg(dev, req->dst, sg_nents(req->dst),
      DMA_BIDIRECTIONAL);
 if (!nents)
  return -EINVAL;

 sr->out.sg = req->dst;
 sr->out.sgmap_cnt = nents;
 ret = create_sg_component(sr, &sr->out, sr->out.sgmap_cnt);
 if (ret)
  goto outcomp_map_err;

 return 0;

outcomp_map_err:
 dma_unmap_sg(dev, req->dst, nents, DMA_BIDIRECTIONAL);
 sr->out.sgmap_cnt = 0;
 sr->out.sg = ((void*)0);
 return ret;
}
