
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_crypto_request {int gfp; } ;
struct nitrox_kcrypt_request {int dst; struct se_crypto_request creq; } ;


 int COMP_HLEN ;
 int ENOMEM ;
 int ORH_HLEN ;
 int alloc_req_buf (int,int,int ) ;

__attribute__((used)) static inline int alloc_dst_req_buf(struct nitrox_kcrypt_request *nkreq,
        int nents)
{
 int extralen = ORH_HLEN + COMP_HLEN;
 struct se_crypto_request *creq = &nkreq->creq;

 nkreq->dst = alloc_req_buf(nents, extralen, creq->gfp);
 if (!nkreq->dst)
  return -ENOMEM;

 return 0;
}
