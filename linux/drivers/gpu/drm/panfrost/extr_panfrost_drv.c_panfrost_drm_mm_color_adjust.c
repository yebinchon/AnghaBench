
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct drm_mm_node {int dummy; } ;


 scalar_t__ ALIGN (scalar_t__,int ) ;
 unsigned long PANFROST_BO_NOEXEC ;
 scalar_t__ PFN_16M ;
 int PFN_4G ;
 scalar_t__ PFN_4G_MASK ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static void panfrost_drm_mm_color_adjust(const struct drm_mm_node *node,
      unsigned long color,
      u64 *start, u64 *end)
{

 if (!(color & PANFROST_BO_NOEXEC)) {
  u64 next_seg;

  if ((*start & PFN_4G_MASK) == 0)
   (*start)++;

  if ((*end & PFN_4G_MASK) == 0)
   (*end)--;

  next_seg = ALIGN(*start, PFN_4G);
  if (next_seg - *start <= PFN_16M)
   *start = next_seg + 1;

  *end = min(*end, ALIGN(*start, PFN_4G) - 1);
 }
}
