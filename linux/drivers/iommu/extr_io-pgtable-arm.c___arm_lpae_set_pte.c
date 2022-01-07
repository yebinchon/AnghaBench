
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_pgtable_cfg {int coherent_walk; } ;
typedef int arm_lpae_iopte ;


 int __arm_lpae_sync_pte (int *,struct io_pgtable_cfg*) ;

__attribute__((used)) static void __arm_lpae_set_pte(arm_lpae_iopte *ptep, arm_lpae_iopte pte,
          struct io_pgtable_cfg *cfg)
{
 *ptep = pte;

 if (!cfg->coherent_walk)
  __arm_lpae_sync_pte(ptep, cfg);
}
