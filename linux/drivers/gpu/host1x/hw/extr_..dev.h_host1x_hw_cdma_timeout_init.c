
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_cdma {int dummy; } ;
struct host1x {TYPE_1__* cdma_op; } ;
struct TYPE_2__ {int (* timeout_init ) (struct host1x_cdma*,unsigned int) ;} ;


 int stub1 (struct host1x_cdma*,unsigned int) ;

__attribute__((used)) static inline int host1x_hw_cdma_timeout_init(struct host1x *host,
           struct host1x_cdma *cdma,
           unsigned int syncpt)
{
 return host->cdma_op->timeout_init(cdma, syncpt);
}
