
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int y; int x; } ;
struct TYPE_4__ {int y; scalar_t__ x; } ;
struct tcm_area {TYPE_3__* tcm; TYPE_2__ p1; TYPE_1__ p0; int is2d; } ;
struct TYPE_6__ {int width; } ;



__attribute__((used)) static inline void tcm_slice(struct tcm_area *parent, struct tcm_area *slice)
{
 *slice = *parent;


 if (slice->tcm && !slice->is2d &&
  slice->p0.y != slice->p1.y &&
  (slice->p0.x || (slice->p1.x != slice->tcm->width - 1))) {

  slice->p1.x = slice->tcm->width - 1;
  slice->p1.y = (slice->p0.x) ? slice->p0.y : slice->p1.y - 1;

  parent->p0.x = 0;
  parent->p0.y = slice->p1.y + 1;
 } else {

  parent->tcm = ((void*)0);
 }
}
