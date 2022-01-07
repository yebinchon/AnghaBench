
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_bo {int flags; } ;


 int AMDGPU_GEM_CREATE_EXPLICIT_SYNC ;

__attribute__((used)) static inline bool amdgpu_bo_explicit_sync(struct amdgpu_bo *bo)
{
 return bo->flags & AMDGPU_GEM_CREATE_EXPLICIT_SYNC;
}
