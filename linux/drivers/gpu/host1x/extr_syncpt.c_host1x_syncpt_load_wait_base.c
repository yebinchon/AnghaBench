
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct host1x_syncpt {int base_val; int host; } ;


 int host1x_hw_syncpt_load_wait_base (int ,struct host1x_syncpt*) ;

u32 host1x_syncpt_load_wait_base(struct host1x_syncpt *sp)
{
 host1x_hw_syncpt_load_wait_base(sp->host, sp);

 return sp->base_val;
}
