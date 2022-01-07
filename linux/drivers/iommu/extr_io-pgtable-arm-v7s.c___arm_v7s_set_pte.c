
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_pgtable_cfg {int dummy; } ;
typedef int arm_v7s_iopte ;


 int __arm_v7s_pte_sync (int *,int,struct io_pgtable_cfg*) ;

__attribute__((used)) static void __arm_v7s_set_pte(arm_v7s_iopte *ptep, arm_v7s_iopte pte,
         int num_entries, struct io_pgtable_cfg *cfg)
{
 int i;

 for (i = 0; i < num_entries; i++)
  ptep[i] = pte;

 __arm_v7s_pte_sync(ptep, num_entries, cfg);
}
