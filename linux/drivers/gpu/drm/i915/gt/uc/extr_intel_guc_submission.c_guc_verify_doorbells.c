
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct intel_guc {int dummy; } ;


 scalar_t__ GUC_NUM_DOORBELLS ;
 int doorbell_ok (struct intel_guc*,scalar_t__) ;

__attribute__((used)) static bool guc_verify_doorbells(struct intel_guc *guc)
{
 bool doorbells_ok = 1;
 u16 db_id;

 for (db_id = 0; db_id < GUC_NUM_DOORBELLS; ++db_id)
  if (!doorbell_ok(guc, db_id))
   doorbells_ok = 0;

 return doorbells_ok;
}
