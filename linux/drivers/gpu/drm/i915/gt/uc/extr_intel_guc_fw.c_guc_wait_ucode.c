
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,int) ;
 int DRM_ERROR (char*,...) ;
 int ENOEXEC ;
 int ENXIO ;
 int GS_BOOTROM_MASK ;
 int GS_BOOTROM_RSA_FAILED ;
 int GS_UKERNEL_EXCEPTION ;
 int GS_UKERNEL_MASK ;
 int SOFT_SCRATCH (int) ;
 int guc_ready (struct intel_uncore*,int*) ;
 int intel_uncore_read (struct intel_uncore*,int ) ;
 int wait_for (int ,int) ;

__attribute__((used)) static int guc_wait_ucode(struct intel_uncore *uncore)
{
 u32 status;
 int ret;
 ret = wait_for(guc_ready(uncore, &status), 100);
 DRM_DEBUG_DRIVER("GuC status %#x\n", status);

 if ((status & GS_BOOTROM_MASK) == GS_BOOTROM_RSA_FAILED) {
  DRM_ERROR("GuC firmware signature verification failed\n");
  ret = -ENOEXEC;
 }

 if ((status & GS_UKERNEL_MASK) == GS_UKERNEL_EXCEPTION) {
  DRM_ERROR("GuC firmware exception. EIP: %#x\n",
     intel_uncore_read(uncore, SOFT_SCRATCH(13)));
  ret = -ENXIO;
 }

 return ret;
}
