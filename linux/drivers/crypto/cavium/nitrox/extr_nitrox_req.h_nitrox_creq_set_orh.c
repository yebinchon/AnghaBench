
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct se_crypto_request {int * orh; } ;
struct nitrox_kcrypt_request {scalar_t__ dst; struct se_crypto_request creq; } ;


 int set_orh_value (int *) ;

__attribute__((used)) static inline void nitrox_creq_set_orh(struct nitrox_kcrypt_request *nkreq)
{
 struct se_crypto_request *creq = &nkreq->creq;

 creq->orh = (u64 *)(nkreq->dst);
 set_orh_value(creq->orh);
}
