
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_crypto_request {int dummy; } ;
struct nitrox_softreq {int dummy; } ;


 int dma_map_inbufs (struct nitrox_softreq*,struct se_crypto_request*) ;
 int dma_map_outbufs (struct nitrox_softreq*,struct se_crypto_request*) ;
 int softreq_unmap_sgbufs (struct nitrox_softreq*) ;

__attribute__((used)) static inline int softreq_map_iobuf(struct nitrox_softreq *sr,
        struct se_crypto_request *creq)
{
 int ret;

 ret = dma_map_inbufs(sr, creq);
 if (ret)
  return ret;

 ret = dma_map_outbufs(sr, creq);
 if (ret)
  softreq_unmap_sgbufs(sr);

 return ret;
}
