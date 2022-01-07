
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct tcm_area {int is2d; struct tcm* tcm; } ;
struct tcm {scalar_t__ height; scalar_t__ width; scalar_t__ (* reserve_2d ) (struct tcm*,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__,struct tcm_area*) ;} ;
typedef scalar_t__ s32 ;
typedef int s16 ;


 scalar_t__ EINVAL ;
 scalar_t__ ENODEV ;
 scalar_t__ ENOMEM ;
 scalar_t__ stub1 (struct tcm*,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__,struct tcm_area*) ;

__attribute__((used)) static inline s32 tcm_reserve_2d(struct tcm *tcm, u16 width, u16 height,
    u16 align, s16 offset, u16 slot_bytes,
    struct tcm_area *area)
{

 s32 res = tcm == ((void*)0) ? -ENODEV :
  (area == ((void*)0) || width == 0 || height == 0 ||

   (align & (align - 1))) ? -EINVAL :
  (height > tcm->height || width > tcm->width) ? -ENOMEM : 0;

 if (!res) {
  area->is2d = 1;
  res = tcm->reserve_2d(tcm, height, width, align, offset,
     slot_bytes, area);
  area->tcm = res ? ((void*)0) : tcm;
 }

 return res;
}
