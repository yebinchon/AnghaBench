
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int dummy; } ;
struct radeon_ttm_tt {int userflags; } ;


 int RADEON_GEM_USERPTR_READONLY ;
 struct radeon_ttm_tt* radeon_ttm_tt_to_gtt (struct ttm_tt*) ;

bool radeon_ttm_tt_is_readonly(struct ttm_tt *ttm)
{
 struct radeon_ttm_tt *gtt = radeon_ttm_tt_to_gtt(ttm);

 if (gtt == ((void*)0))
  return 0;

 return !!(gtt->userflags & RADEON_GEM_USERPTR_READONLY);
}
