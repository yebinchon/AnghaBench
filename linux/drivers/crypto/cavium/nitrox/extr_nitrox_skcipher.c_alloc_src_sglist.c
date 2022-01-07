
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int cryptlen; int src; int iv; } ;
struct nitrox_kcrypt_request {int src; } ;


 int alloc_src_req_buf (struct nitrox_kcrypt_request*,int,int) ;
 int nitrox_creq_copy_iv (int ,int ,int) ;
 int nitrox_creq_set_src_sg (struct nitrox_kcrypt_request*,int,int,int ,int ) ;
 int sg_nents (int ) ;
 struct nitrox_kcrypt_request* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static int alloc_src_sglist(struct skcipher_request *skreq, int ivsize)
{
 struct nitrox_kcrypt_request *nkreq = skcipher_request_ctx(skreq);
 int nents = sg_nents(skreq->src) + 1;
 int ret;


 ret = alloc_src_req_buf(nkreq, nents, ivsize);
 if (ret)
  return ret;

 nitrox_creq_copy_iv(nkreq->src, skreq->iv, ivsize);
 nitrox_creq_set_src_sg(nkreq, nents, ivsize, skreq->src,
          skreq->cryptlen);

 return 0;
}
