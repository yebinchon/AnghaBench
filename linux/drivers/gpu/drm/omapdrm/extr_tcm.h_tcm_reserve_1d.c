
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcm_area {int is2d; struct tcm* tcm; } ;
struct tcm {int width; scalar_t__ (* reserve_1d ) (struct tcm*,int,struct tcm_area*) ;scalar_t__ height; } ;
typedef scalar_t__ s32 ;


 scalar_t__ EINVAL ;
 scalar_t__ ENODEV ;
 scalar_t__ ENOMEM ;
 scalar_t__ stub1 (struct tcm*,int,struct tcm_area*) ;

__attribute__((used)) static inline s32 tcm_reserve_1d(struct tcm *tcm, u32 slots,
     struct tcm_area *area)
{

 s32 res = tcm == ((void*)0) ? -ENODEV :
  (area == ((void*)0) || slots == 0) ? -EINVAL :
  slots > (tcm->width * (u32) tcm->height) ? -ENOMEM : 0;

 if (!res) {
  area->is2d = 0;
  res = tcm->reserve_1d(tcm, slots, area);
  area->tcm = res ? ((void*)0) : tcm;
 }

 return res;
}
