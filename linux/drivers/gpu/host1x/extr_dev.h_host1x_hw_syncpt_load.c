
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct host1x_syncpt {int dummy; } ;
struct host1x {TYPE_1__* syncpt_op; } ;
struct TYPE_2__ {int (* load ) (struct host1x_syncpt*) ;} ;


 int stub1 (struct host1x_syncpt*) ;

__attribute__((used)) static inline u32 host1x_hw_syncpt_load(struct host1x *host,
     struct host1x_syncpt *sp)
{
 return host->syncpt_op->load(sp);
}
