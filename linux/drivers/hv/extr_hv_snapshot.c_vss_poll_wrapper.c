
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;


 int HVUTIL_READY ;
 int hv_vss_onchannelcallback (void*) ;
 TYPE_1__ vss_transaction ;

__attribute__((used)) static void vss_poll_wrapper(void *channel)
{

 vss_transaction.state = HVUTIL_READY;
 hv_vss_onchannelcallback(channel);
}
