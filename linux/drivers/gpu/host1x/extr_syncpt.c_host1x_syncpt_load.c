
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct host1x_syncpt {int id; int host; } ;


 int host1x_hw_syncpt_load (int ,struct host1x_syncpt*) ;
 int trace_host1x_syncpt_load_min (int ,int ) ;

u32 host1x_syncpt_load(struct host1x_syncpt *sp)
{
 u32 val;

 val = host1x_hw_syncpt_load(sp->host, sp);
 trace_host1x_syncpt_load_min(sp->id, val);

 return val;
}
