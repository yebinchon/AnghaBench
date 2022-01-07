
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct exynos_drm_ipp_formats {unsigned int type; scalar_t__ fourcc; scalar_t__ modifier; } ;
struct exynos_drm_ipp {int num_formats; struct exynos_drm_ipp_formats const* formats; } ;



__attribute__((used)) static inline const struct exynos_drm_ipp_formats *__ipp_format_get(
    struct exynos_drm_ipp *ipp, uint32_t fourcc,
    uint64_t mod, unsigned int type)
{
 int i;

 for (i = 0; i < ipp->num_formats; i++) {
  if ((ipp->formats[i].type & type) &&
      ipp->formats[i].fourcc == fourcc &&
      ipp->formats[i].modifier == mod)
   return &ipp->formats[i];
 }
 return ((void*)0);
}
