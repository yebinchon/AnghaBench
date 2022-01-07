
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct intel_guc {int dummy; } ;


 int EIO ;
 scalar_t__ GUC_NUM_DOORBELLS ;
 int doorbell_ok (struct intel_guc*,scalar_t__) ;
 int pr_err (char*,scalar_t__) ;
 int pr_info_once (char*,scalar_t__) ;

__attribute__((used)) static int check_all_doorbells(struct intel_guc *guc)
{
 u16 db_id;

 pr_info_once("Max number of doorbells: %d", GUC_NUM_DOORBELLS);
 for (db_id = 0; db_id < GUC_NUM_DOORBELLS; ++db_id) {
  if (!doorbell_ok(guc, db_id)) {
   pr_err("doorbell %d, not ok\n", db_id);
   return -EIO;
  }
 }

 return 0;
}
