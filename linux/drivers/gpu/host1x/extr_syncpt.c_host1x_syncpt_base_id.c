
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct host1x_syncpt_base {int id; } ;



u32 host1x_syncpt_base_id(struct host1x_syncpt_base *base)
{
 return base->id;
}
