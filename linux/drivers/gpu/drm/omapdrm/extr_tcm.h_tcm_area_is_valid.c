
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int x; int y; } ;
struct TYPE_5__ {int y; int x; } ;
struct tcm_area {TYPE_3__ p1; TYPE_2__ p0; scalar_t__ is2d; TYPE_1__* tcm; } ;
struct TYPE_4__ {int width; int height; } ;



__attribute__((used)) static inline bool tcm_area_is_valid(struct tcm_area *area)
{
 return area && area->tcm &&

  area->p1.x < area->tcm->width &&
  area->p1.y < area->tcm->height &&
  area->p0.y <= area->p1.y &&

  ((!area->is2d &&
    area->p0.x < area->tcm->width &&
    area->p0.x + area->p0.y * area->tcm->width <=
    area->p1.x + area->p1.y * area->tcm->width) ||

   (area->is2d &&
    area->p0.x <= area->p1.x));
}
