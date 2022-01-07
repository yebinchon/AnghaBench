
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcm_area {TYPE_1__* tcm; } ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {scalar_t__ (* free ) (TYPE_1__*,struct tcm_area*) ;} ;


 scalar_t__ stub1 (TYPE_1__*,struct tcm_area*) ;

__attribute__((used)) static inline s32 tcm_free(struct tcm_area *area)
{
 s32 res = 0;

 if (area && area->tcm) {
  res = area->tcm->free(area->tcm, area);
  if (res == 0)
   area->tcm = ((void*)0);
 }

 return res;
}
