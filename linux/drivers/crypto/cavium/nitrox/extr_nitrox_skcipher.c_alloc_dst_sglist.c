
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int cryptlen; int dst; } ;
struct nitrox_kcrypt_request {int dummy; } ;


 int alloc_dst_req_buf (struct nitrox_kcrypt_request*,int) ;
 int nitrox_creq_set_comp (struct nitrox_kcrypt_request*) ;
 int nitrox_creq_set_dst_sg (struct nitrox_kcrypt_request*,int,int,int ,int ) ;
 int nitrox_creq_set_orh (struct nitrox_kcrypt_request*) ;
 int sg_nents (int ) ;
 struct nitrox_kcrypt_request* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static int alloc_dst_sglist(struct skcipher_request *skreq, int ivsize)
{
 struct nitrox_kcrypt_request *nkreq = skcipher_request_ctx(skreq);
 int nents = sg_nents(skreq->dst) + 3;
 int ret;




 ret = alloc_dst_req_buf(nkreq, nents);
 if (ret)
  return ret;

 nitrox_creq_set_orh(nkreq);
 nitrox_creq_set_comp(nkreq);
 nitrox_creq_set_dst_sg(nkreq, nents, ivsize, skreq->dst,
          skreq->cryptlen);

 return 0;
}
