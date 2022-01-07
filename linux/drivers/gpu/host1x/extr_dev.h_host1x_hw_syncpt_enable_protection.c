
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x {TYPE_1__* syncpt_op; } ;
struct TYPE_2__ {void (* enable_protection ) (struct host1x*) ;} ;


 void stub1 (struct host1x*) ;

__attribute__((used)) static inline void host1x_hw_syncpt_enable_protection(struct host1x *host)
{
 return host->syncpt_op->enable_protection(host);
}
