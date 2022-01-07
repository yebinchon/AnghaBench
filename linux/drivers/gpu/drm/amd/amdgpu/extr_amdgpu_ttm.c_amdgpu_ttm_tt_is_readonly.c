
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int dummy; } ;
struct amdgpu_ttm_tt {int userflags; } ;


 int AMDGPU_GEM_USERPTR_READONLY ;

bool amdgpu_ttm_tt_is_readonly(struct ttm_tt *ttm)
{
 struct amdgpu_ttm_tt *gtt = (void *)ttm;

 if (gtt == ((void*)0))
  return 0;

 return !!(gtt->userflags & AMDGPU_GEM_USERPTR_READONLY);
}
