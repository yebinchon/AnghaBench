
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_uc_fw {int dummy; } ;
typedef int rsa ;


 int GEM_BUG_ON (int) ;
 int UOS_RSA_SCRATCH (int) ;
 int UOS_RSA_SCRATCH_COUNT ;
 size_t intel_uc_fw_copy_rsa (struct intel_uc_fw*,int *,int) ;
 int intel_uncore_write (struct intel_uncore*,int ,int ) ;

__attribute__((used)) static void guc_xfer_rsa(struct intel_uc_fw *guc_fw,
    struct intel_uncore *uncore)
{
 u32 rsa[UOS_RSA_SCRATCH_COUNT];
 size_t copied;
 int i;

 copied = intel_uc_fw_copy_rsa(guc_fw, rsa, sizeof(rsa));
 GEM_BUG_ON(copied < sizeof(rsa));

 for (i = 0; i < UOS_RSA_SCRATCH_COUNT; i++)
  intel_uncore_write(uncore, UOS_RSA_SCRATCH(i), rsa[i]);
}
