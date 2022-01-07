
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct se_crypto_request {int * comp; } ;
struct nitrox_kcrypt_request {scalar_t__ dst; struct se_crypto_request creq; } ;


 scalar_t__ ORH_HLEN ;
 int set_comp_value (int *) ;

__attribute__((used)) static inline void nitrox_creq_set_comp(struct nitrox_kcrypt_request *nkreq)
{
 struct se_crypto_request *creq = &nkreq->creq;

 creq->comp = (u64 *)(nkreq->dst + ORH_HLEN);
 set_comp_value(creq->comp);
}
