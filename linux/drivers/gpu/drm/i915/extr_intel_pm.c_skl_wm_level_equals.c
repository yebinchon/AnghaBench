
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_wm_level {scalar_t__ plane_en; scalar_t__ ignore_lines; scalar_t__ plane_res_l; scalar_t__ plane_res_b; } ;



bool skl_wm_level_equals(const struct skl_wm_level *l1,
    const struct skl_wm_level *l2)
{
 return l1->plane_en == l2->plane_en &&
  l1->ignore_lines == l2->ignore_lines &&
  l1->plane_res_l == l2->plane_res_l &&
  l1->plane_res_b == l2->plane_res_b;
}
