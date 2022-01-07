
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int AMDGPU_GMC_HOLE_END ;
 int AMDGPU_GMC_HOLE_START ;

__attribute__((used)) static inline uint64_t amdgpu_gmc_sign_extend(uint64_t addr)
{
 if (addr >= AMDGPU_GMC_HOLE_START)
  addr |= AMDGPU_GMC_HOLE_END;

 return addr;
}
