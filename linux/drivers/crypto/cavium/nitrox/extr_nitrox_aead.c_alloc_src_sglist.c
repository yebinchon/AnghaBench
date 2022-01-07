
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct nitrox_kcrypt_request {int src; } ;


 int alloc_src_req_buf (struct nitrox_kcrypt_request*,int,int) ;
 int nitrox_creq_copy_iv (int ,char*,int) ;
 int nitrox_creq_set_src_sg (struct nitrox_kcrypt_request*,int,int,struct scatterlist*,int) ;
 int sg_nents_for_len (struct scatterlist*,int) ;

__attribute__((used)) static int alloc_src_sglist(struct nitrox_kcrypt_request *nkreq,
       struct scatterlist *src, char *iv, int ivsize,
       int buflen)
{
 int nents = sg_nents_for_len(src, buflen);
 int ret;

 if (nents < 0)
  return nents;


 nents += 1;

 ret = alloc_src_req_buf(nkreq, nents, ivsize);
 if (ret)
  return ret;

 nitrox_creq_copy_iv(nkreq->src, iv, ivsize);
 nitrox_creq_set_src_sg(nkreq, nents, ivsize, src, buflen);

 return 0;
}
