
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x {TYPE_1__* intr_op; } ;
struct TYPE_2__ {int (* enable_syncpt_intr ) (struct host1x*,unsigned int) ;} ;


 int stub1 (struct host1x*,unsigned int) ;

__attribute__((used)) static inline void host1x_hw_intr_enable_syncpt_intr(struct host1x *host,
           unsigned int id)
{
 host->intr_op->enable_syncpt_intr(host, id);
}
