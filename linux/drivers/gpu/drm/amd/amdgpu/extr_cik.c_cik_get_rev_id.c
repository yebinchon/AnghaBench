
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int CC_DRM_ID_STRAPS__ATI_REV_ID_MASK ;
 int CC_DRM_ID_STRAPS__ATI_REV_ID__SHIFT ;
 int RREG32 (int ) ;
 int mmCC_DRM_ID_STRAPS ;

__attribute__((used)) static uint32_t cik_get_rev_id(struct amdgpu_device *adev)
{
 return (RREG32(mmCC_DRM_ID_STRAPS) & CC_DRM_ID_STRAPS__ATI_REV_ID_MASK)
  >> CC_DRM_ID_STRAPS__ATI_REV_ID__SHIFT;
}
