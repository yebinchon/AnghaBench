
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int x; scalar_t__ y; } ;
struct TYPE_4__ {int x; scalar_t__ y; } ;
struct tcm_area {TYPE_3__* tcm; TYPE_2__ p0; TYPE_1__ p1; } ;
typedef int s32 ;
struct TYPE_6__ {int width; } ;


 int EINVAL ;
 int ENOMEM ;
 int __tcm_sizeof (struct tcm_area*) ;

__attribute__((used)) static inline s32 tcm_1d_limit(struct tcm_area *a, u32 num_pg)
{
 if (__tcm_sizeof(a) < num_pg)
  return -ENOMEM;
 if (!num_pg)
  return -EINVAL;

 a->p1.x = (a->p0.x + num_pg - 1) % a->tcm->width;
 a->p1.y = a->p0.y + ((a->p0.x + num_pg - 1) / a->tcm->width);
 return 0;
}
