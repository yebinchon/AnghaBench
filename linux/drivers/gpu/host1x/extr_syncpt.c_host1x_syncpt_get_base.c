
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_syncpt_base {int dummy; } ;
struct host1x_syncpt {struct host1x_syncpt_base* base; } ;



struct host1x_syncpt_base *host1x_syncpt_get_base(struct host1x_syncpt *sp)
{
 return sp ? sp->base : ((void*)0);
}
