
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct ttm_tt {int dummy; } ;
struct amdgpu_ttm_tt {scalar_t__ usertask; int userflags; int userptr; } ;
struct TYPE_2__ {scalar_t__ group_leader; } ;


 int EINVAL ;
 TYPE_1__* current ;
 int get_task_struct (scalar_t__) ;
 int put_task_struct (scalar_t__) ;

int amdgpu_ttm_tt_set_userptr(struct ttm_tt *ttm, uint64_t addr,
         uint32_t flags)
{
 struct amdgpu_ttm_tt *gtt = (void *)ttm;

 if (gtt == ((void*)0))
  return -EINVAL;

 gtt->userptr = addr;
 gtt->userflags = flags;

 if (gtt->usertask)
  put_task_struct(gtt->usertask);
 gtt->usertask = current->group_leader;
 get_task_struct(gtt->usertask);

 return 0;
}
