
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct ttm_tt {int dummy; } ;
struct radeon_ttm_tt {int userflags; int usermm; int userptr; } ;
struct TYPE_2__ {int mm; } ;


 int EINVAL ;
 TYPE_1__* current ;
 struct radeon_ttm_tt* radeon_ttm_tt_to_gtt (struct ttm_tt*) ;

int radeon_ttm_tt_set_userptr(struct ttm_tt *ttm, uint64_t addr,
         uint32_t flags)
{
 struct radeon_ttm_tt *gtt = radeon_ttm_tt_to_gtt(ttm);

 if (gtt == ((void*)0))
  return -EINVAL;

 gtt->userptr = addr;
 gtt->usermm = current->mm;
 gtt->userflags = flags;
 return 0;
}
