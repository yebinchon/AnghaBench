
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_tt {int dummy; } ;
struct TYPE_3__ {scalar_t__ num_pages; } ;
struct TYPE_4__ {TYPE_1__ ttm; } ;
struct amdgpu_ttm_tt {unsigned long userptr; TYPE_2__ ttm; } ;


 unsigned long PAGE_SIZE ;

bool amdgpu_ttm_tt_affect_userptr(struct ttm_tt *ttm, unsigned long start,
      unsigned long end)
{
 struct amdgpu_ttm_tt *gtt = (void *)ttm;
 unsigned long size;

 if (gtt == ((void*)0) || !gtt->userptr)
  return 0;




 size = (unsigned long)gtt->ttm.ttm.num_pages * PAGE_SIZE;
 if (gtt->userptr > end || gtt->userptr + size <= start)
  return 0;

 return 1;
}
