
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initialized; int wq; } ;
struct host1x_cdma {TYPE_1__ timeout; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int cdma_timeout_handler ;

__attribute__((used)) static int cdma_timeout_init(struct host1x_cdma *cdma, unsigned int syncpt)
{
 INIT_DELAYED_WORK(&cdma->timeout.wq, cdma_timeout_handler);
 cdma->timeout.initialized = 1;

 return 0;
}
