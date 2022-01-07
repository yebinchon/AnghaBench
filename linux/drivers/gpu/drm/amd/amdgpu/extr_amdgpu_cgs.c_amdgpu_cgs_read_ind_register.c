
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cgs_device {int dummy; } ;
typedef enum cgs_ind_reg { ____Placeholder_cgs_ind_reg } cgs_ind_reg ;


 int CGS_FUNC_ADEV ;
 int DRM_ERROR (char*) ;
 int RREG32_DIDT (unsigned int) ;
 int RREG32_GC_CAC (unsigned int) ;
 int RREG32_IDX (unsigned int) ;
 int RREG32_PCIE (unsigned int) ;
 int RREG32_SE_CAC (unsigned int) ;
 int RREG32_SMC (unsigned int) ;
 int RREG32_UVD_CTX (unsigned int) ;
 int WARN (int,char*) ;

__attribute__((used)) static uint32_t amdgpu_cgs_read_ind_register(struct cgs_device *cgs_device,
          enum cgs_ind_reg space,
          unsigned index)
{
 CGS_FUNC_ADEV;
 switch (space) {
 case 131:
  return RREG32_IDX(index);
 case 130:
  return RREG32_PCIE(index);
 case 129:
  return RREG32_SMC(index);
 case 128:
  return RREG32_UVD_CTX(index);
 case 132:
  return RREG32_DIDT(index);
 case 135:
  return RREG32_GC_CAC(index);
 case 134:
  return RREG32_SE_CAC(index);
 case 133:
  DRM_ERROR("audio endpt register access not implemented.\n");
  return 0;
 }
 WARN(1, "Invalid indirect register space");
 return 0;
}
