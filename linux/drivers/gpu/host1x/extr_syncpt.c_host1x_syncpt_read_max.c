
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct host1x_syncpt {int max_val; } ;


 int atomic_read (int *) ;
 int smp_rmb () ;

u32 host1x_syncpt_read_max(struct host1x_syncpt *sp)
{
 smp_rmb();

 return (u32)atomic_read(&sp->max_val);
}
