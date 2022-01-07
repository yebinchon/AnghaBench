
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_syncpt {int host; } ;


 int host1x_hw_syncpt_cpu_incr (int ,struct host1x_syncpt*) ;

int host1x_syncpt_incr(struct host1x_syncpt *sp)
{
 return host1x_hw_syncpt_cpu_incr(sp->host, sp);
}
