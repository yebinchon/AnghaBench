
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int dummy; } ;
struct amdgpu_ttm_tt {int userptr; } ;



bool amdgpu_ttm_tt_is_userptr(struct ttm_tt *ttm)
{
 struct amdgpu_ttm_tt *gtt = (void *)ttm;

 if (gtt == ((void*)0) || !gtt->userptr)
  return 0;

 return 1;
}
