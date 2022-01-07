
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct host1x {TYPE_1__* intr_op; } ;
struct TYPE_2__ {int (* set_syncpt_threshold ) (struct host1x*,unsigned int,int ) ;} ;


 int stub1 (struct host1x*,unsigned int,int ) ;

__attribute__((used)) static inline void host1x_hw_intr_set_syncpt_threshold(struct host1x *host,
             unsigned int id,
             u32 thresh)
{
 host->intr_op->set_syncpt_threshold(host, id, thresh);
}
