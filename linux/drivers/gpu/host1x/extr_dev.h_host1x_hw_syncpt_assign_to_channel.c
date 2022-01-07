
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_syncpt {int dummy; } ;
struct host1x_channel {int dummy; } ;
struct host1x {TYPE_1__* syncpt_op; } ;
struct TYPE_2__ {void (* assign_to_channel ) (struct host1x_syncpt*,struct host1x_channel*) ;} ;


 void stub1 (struct host1x_syncpt*,struct host1x_channel*) ;

__attribute__((used)) static inline void host1x_hw_syncpt_assign_to_channel(
 struct host1x *host, struct host1x_syncpt *sp,
 struct host1x_channel *ch)
{
 return host->syncpt_op->assign_to_channel(sp, ch);
}
