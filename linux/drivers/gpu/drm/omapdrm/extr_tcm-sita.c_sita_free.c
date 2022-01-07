
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int x; int y; } ;
struct TYPE_3__ {unsigned long x; unsigned long y; } ;
struct tcm_area {TYPE_2__ p1; TYPE_1__ p0; scalar_t__ is2d; } ;
struct tcm {unsigned long width; int lock; int bitmap; } ;
typedef int s32 ;


 int free_slots (unsigned long,int,int,int ,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static s32 sita_free(struct tcm *tcm, struct tcm_area *area)
{
 unsigned long pos;
 u16 w, h;

 pos = area->p0.x + area->p0.y * tcm->width;
 if (area->is2d) {
  w = area->p1.x - area->p0.x + 1;
  h = area->p1.y - area->p0.y + 1;
 } else {
  w = area->p1.x + area->p1.y * tcm->width - pos + 1;
  h = 1;
 }

 spin_lock(&(tcm->lock));
 free_slots(pos, w, h, tcm->bitmap, tcm->width);
 spin_unlock(&(tcm->lock));
 return 0;
}
