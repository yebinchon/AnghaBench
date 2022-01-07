
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct host1x_cdma {int dummy; } ;
struct host1x {TYPE_1__* cdma_op; } ;
struct TYPE_2__ {int (* resume ) (struct host1x_cdma*,int ) ;} ;


 int stub1 (struct host1x_cdma*,int ) ;

__attribute__((used)) static inline void host1x_hw_cdma_resume(struct host1x *host,
      struct host1x_cdma *cdma, u32 getptr)
{
 host->cdma_op->resume(cdma, getptr);
}
