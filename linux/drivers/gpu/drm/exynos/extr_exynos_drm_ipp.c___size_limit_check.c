
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_exynos_ipp_limit_val {unsigned int min; unsigned int max; int align; } ;


 int DRM_DEBUG_DRIVER (char*,unsigned int,unsigned int,unsigned int) ;
 int __align_check (unsigned int,int ) ;

__attribute__((used)) static inline bool __size_limit_check(unsigned int val,
     struct drm_exynos_ipp_limit_val *l)
{
 if ((l->min && val < l->min) || (l->max && val > l->max)) {
  DRM_DEBUG_DRIVER("Value %d exceeds HW limits (min %d, max %d)\n",
     val, l->min, l->max);
  return 0;
 }
 return __align_check(val, l->align);
}
