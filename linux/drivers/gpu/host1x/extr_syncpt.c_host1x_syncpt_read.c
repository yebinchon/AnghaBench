
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct host1x_syncpt {int dummy; } ;


 int host1x_syncpt_load (struct host1x_syncpt*) ;

u32 host1x_syncpt_read(struct host1x_syncpt *sp)
{
 return host1x_syncpt_load(sp);
}
