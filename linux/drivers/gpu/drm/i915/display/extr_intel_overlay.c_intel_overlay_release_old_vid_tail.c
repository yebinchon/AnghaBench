
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_overlay {int dummy; } ;


 int intel_overlay_release_old_vma (struct intel_overlay*) ;

__attribute__((used)) static void
intel_overlay_release_old_vid_tail(struct intel_overlay *overlay)
{
 intel_overlay_release_old_vma(overlay);
}
