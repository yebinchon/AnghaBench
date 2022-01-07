
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {int dummy; } ;
struct hfi1_devdata {int link_credits; int vl15_init; int num_pports; struct hfi1_pportdata* pport; int vau; int vcu; } ;


 int CM_GLOBAL_CREDITS ;
 int CM_VAU ;
 scalar_t__ HFI1_CAP_IS_KSET (int ) ;
 int PKEY_CHECK ;
 int cu_to_vcu (int ) ;
 int hfi1_cu ;
 int init_sc2vl_tables (struct hfi1_devdata*) ;
 scalar_t__ is_ax (struct hfi1_devdata*) ;
 int set_partition_keys (struct hfi1_pportdata*) ;
 int vau_to_au (int ) ;
 int write_uninitialized_csrs_and_memories (struct hfi1_devdata*) ;

__attribute__((used)) static void init_early_variables(struct hfi1_devdata *dd)
{
 int i;


 dd->vau = CM_VAU;
 dd->link_credits = CM_GLOBAL_CREDITS;
 if (is_ax(dd))
  dd->link_credits--;
 dd->vcu = cu_to_vcu(hfi1_cu);

 dd->vl15_init = (8 * (2048 + 128)) / vau_to_au(dd->vau);
 if (dd->vl15_init > dd->link_credits)
  dd->vl15_init = dd->link_credits;

 write_uninitialized_csrs_and_memories(dd);

 if (HFI1_CAP_IS_KSET(PKEY_CHECK))
  for (i = 0; i < dd->num_pports; i++) {
   struct hfi1_pportdata *ppd = &dd->pport[i];

   set_partition_keys(ppd);
  }
 init_sc2vl_tables(dd);
}
