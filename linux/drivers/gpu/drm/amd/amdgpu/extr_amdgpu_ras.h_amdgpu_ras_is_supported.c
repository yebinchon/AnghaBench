
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ras {int supported; } ;
struct amdgpu_device {int dummy; } ;


 unsigned int AMDGPU_RAS_BLOCK_COUNT ;
 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;

__attribute__((used)) static inline int amdgpu_ras_is_supported(struct amdgpu_device *adev,
  unsigned int block)
{
 struct amdgpu_ras *ras = amdgpu_ras_get_context(adev);

 if (block >= AMDGPU_RAS_BLOCK_COUNT)
  return 0;
 return ras && (ras->supported & (1 << block));
}
