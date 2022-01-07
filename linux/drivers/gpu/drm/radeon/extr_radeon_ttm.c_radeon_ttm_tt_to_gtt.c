
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int * func; } ;
struct radeon_ttm_tt {int dummy; } ;


 int radeon_backend_func ;

__attribute__((used)) static struct radeon_ttm_tt *radeon_ttm_tt_to_gtt(struct ttm_tt *ttm)
{
 if (!ttm || ttm->func != &radeon_backend_func)
  return ((void*)0);
 return (struct radeon_ttm_tt *)ttm;
}
