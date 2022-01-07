
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm {int dummy; } ;


 scalar_t__ WARN (int,char*) ;
 int drm_mm_clean (struct drm_mm*) ;
 int show_leaks (struct drm_mm*) ;

void drm_mm_takedown(struct drm_mm *mm)
{
 if (WARN(!drm_mm_clean(mm),
   "Memory manager not clean during takedown.\n"))
  show_leaks(mm);
}
