
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cgs_device {int dummy; } ;
typedef enum cgs_ind_reg { ____Placeholder_cgs_ind_reg } cgs_ind_reg ;


 int CGS_FUNC_ADEV ;
 int DRM_ERROR (char*) ;
 int WARN (int,char*) ;
 void WREG32_DIDT (unsigned int,int ) ;
 void WREG32_GC_CAC (unsigned int,int ) ;
 void WREG32_IDX (unsigned int,int ) ;
 void WREG32_PCIE (unsigned int,int ) ;
 void WREG32_SE_CAC (unsigned int,int ) ;
 void WREG32_SMC (unsigned int,int ) ;
 void WREG32_UVD_CTX (unsigned int,int ) ;

__attribute__((used)) static void amdgpu_cgs_write_ind_register(struct cgs_device *cgs_device,
       enum cgs_ind_reg space,
       unsigned index, uint32_t value)
{
 CGS_FUNC_ADEV;
 switch (space) {
 case 131:
  return WREG32_IDX(index, value);
 case 130:
  return WREG32_PCIE(index, value);
 case 129:
  return WREG32_SMC(index, value);
 case 128:
  return WREG32_UVD_CTX(index, value);
 case 132:
  return WREG32_DIDT(index, value);
 case 135:
  return WREG32_GC_CAC(index, value);
 case 134:
  return WREG32_SE_CAC(index, value);
 case 133:
  DRM_ERROR("audio endpt register access not implemented.\n");
  return;
 }
 WARN(1, "Invalid indirect register space");
}
