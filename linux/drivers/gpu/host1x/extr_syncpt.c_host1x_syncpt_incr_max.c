
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct host1x_syncpt {int max_val; } ;


 int atomic_add_return (int ,int *) ;

u32 host1x_syncpt_incr_max(struct host1x_syncpt *sp, u32 incrs)
{
 return (u32)atomic_add_return(incrs, &sp->max_val);
}
