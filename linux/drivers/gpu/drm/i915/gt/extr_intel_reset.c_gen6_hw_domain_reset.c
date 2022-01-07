
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_gt {struct intel_uncore* uncore; } ;


 int DRM_DEBUG_DRIVER (char*,int ) ;
 int GEN6_GDRST ;
 int __intel_wait_for_register_fw (struct intel_uncore*,int ,int ,int ,int,int ,int *) ;
 int intel_uncore_write_fw (struct intel_uncore*,int ,int ) ;

__attribute__((used)) static int gen6_hw_domain_reset(struct intel_gt *gt, u32 hw_domain_mask)
{
 struct intel_uncore *uncore = gt->uncore;
 int err;






 intel_uncore_write_fw(uncore, GEN6_GDRST, hw_domain_mask);


 err = __intel_wait_for_register_fw(uncore,
        GEN6_GDRST, hw_domain_mask, 0,
        500, 0,
        ((void*)0));
 if (err)
  DRM_DEBUG_DRIVER("Wait for 0x%08x engines reset failed\n",
     hw_domain_mask);

 return err;
}
