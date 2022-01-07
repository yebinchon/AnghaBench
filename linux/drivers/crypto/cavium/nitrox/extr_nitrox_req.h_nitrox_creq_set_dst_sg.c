
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_crypto_request {char* orh; char* comp; struct scatterlist* dst; } ;
struct scatterlist {int dummy; } ;
struct nitrox_kcrypt_request {char* src; int dst; struct se_crypto_request creq; } ;


 int COMP_HLEN ;
 int ORH_HLEN ;
 struct scatterlist* create_multi_sg (struct scatterlist*,struct scatterlist*,int) ;
 struct scatterlist* create_single_sg (struct scatterlist*,char*,int) ;
 struct scatterlist* nitrox_creq_dst_sg (int ) ;
 int sg_init_table (struct scatterlist*,int) ;

__attribute__((used)) static inline void nitrox_creq_set_dst_sg(struct nitrox_kcrypt_request *nkreq,
       int nents, int ivsize,
       struct scatterlist *dst, int buflen)
{
 struct se_crypto_request *creq = &nkreq->creq;
 struct scatterlist *sg;
 char *iv = nkreq->src;

 creq->dst = nitrox_creq_dst_sg(nkreq->dst);
 sg = creq->dst;
 sg_init_table(sg, nents);
 sg = create_single_sg(sg, creq->orh, ORH_HLEN);

 sg = create_single_sg(sg, iv, ivsize);

 sg = create_multi_sg(sg, dst, buflen);

 create_single_sg(sg, creq->comp, COMP_HLEN);
}
