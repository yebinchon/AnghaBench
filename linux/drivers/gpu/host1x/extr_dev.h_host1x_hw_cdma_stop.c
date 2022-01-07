
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_cdma {int dummy; } ;
struct host1x {TYPE_1__* cdma_op; } ;
struct TYPE_2__ {int (* stop ) (struct host1x_cdma*) ;} ;


 int stub1 (struct host1x_cdma*) ;

__attribute__((used)) static inline void host1x_hw_cdma_stop(struct host1x *host,
           struct host1x_cdma *cdma)
{
 host->cdma_op->stop(cdma);
}
