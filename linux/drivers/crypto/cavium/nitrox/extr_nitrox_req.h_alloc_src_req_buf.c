
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_crypto_request {int gfp; } ;
struct nitrox_kcrypt_request {int src; struct se_crypto_request creq; } ;


 int ENOMEM ;
 int alloc_req_buf (int,int,int ) ;

__attribute__((used)) static inline int alloc_src_req_buf(struct nitrox_kcrypt_request *nkreq,
        int nents, int ivsize)
{
 struct se_crypto_request *creq = &nkreq->creq;

 nkreq->src = alloc_req_buf(nents, ivsize, creq->gfp);
 if (!nkreq->src)
  return -ENOMEM;

 return 0;
}
