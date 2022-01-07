
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u16 ;
struct TYPE_4__ {unsigned long x; unsigned long y; } ;
struct TYPE_3__ {void* y; void* x; } ;
struct tcm_area {TYPE_2__ p0; TYPE_1__ p1; } ;
struct tcm {unsigned long width; int lock; int map_size; int bitmap; } ;
typedef int s32 ;
typedef int s16 ;


 int l2r_t2b (void*,void*,void*,int ,unsigned long*,void*,int ,int ,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static s32 sita_reserve_2d(struct tcm *tcm, u16 h, u16 w, u16 align,
    s16 offset, u16 slot_bytes,
    struct tcm_area *area)
{
 unsigned long pos;
 int ret;

 spin_lock(&(tcm->lock));
 ret = l2r_t2b(w, h, align, offset, &pos, slot_bytes, tcm->bitmap,
   tcm->map_size, tcm->width);

 if (!ret) {
  area->p0.x = pos % tcm->width;
  area->p0.y = pos / tcm->width;
  area->p1.x = area->p0.x + w - 1;
  area->p1.y = area->p0.y + h - 1;
 }
 spin_unlock(&(tcm->lock));

 return ret;
}
