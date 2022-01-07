
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_tt {int dummy; } ;
struct mm_struct {int dummy; } ;
struct amdgpu_ttm_tt {TYPE_1__* usertask; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;



struct mm_struct *amdgpu_ttm_tt_get_usermm(struct ttm_tt *ttm)
{
 struct amdgpu_ttm_tt *gtt = (void *)ttm;

 if (gtt == ((void*)0))
  return ((void*)0);

 if (gtt->usertask == ((void*)0))
  return ((void*)0);

 return gtt->usertask->mm;
}
