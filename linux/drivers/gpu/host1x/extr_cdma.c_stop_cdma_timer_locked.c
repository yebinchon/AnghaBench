
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * client; int wq; } ;
struct host1x_cdma {TYPE_1__ timeout; } ;


 int cancel_delayed_work (int *) ;

__attribute__((used)) static void stop_cdma_timer_locked(struct host1x_cdma *cdma)
{
 cancel_delayed_work(&cdma->timeout.wq);
 cdma->timeout.client = ((void*)0);
}
