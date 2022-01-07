
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct intel_guc {int doorbell_bitmap; } ;


 int DRM_DEBUG_DRIVER (char*,scalar_t__,int ) ;
 int GEM_BUG_ON (int) ;
 scalar_t__ GUC_NUM_DOORBELLS ;
 int __doorbell_valid (struct intel_guc*,scalar_t__) ;
 int test_bit (scalar_t__,int ) ;
 int yesno (int) ;

__attribute__((used)) static bool doorbell_ok(struct intel_guc *guc, u16 db_id)
{
 bool valid;

 GEM_BUG_ON(db_id >= GUC_NUM_DOORBELLS);

 valid = __doorbell_valid(guc, db_id);

 if (test_bit(db_id, guc->doorbell_bitmap) == valid)
  return 1;

 DRM_DEBUG_DRIVER("Doorbell %u has unexpected state: valid=%s\n",
    db_id, yesno(valid));

 return 0;
}
