
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;


 int HVUTIL_READY ;
 TYPE_1__ fcopy_transaction ;
 int hv_fcopy_onchannelcallback (void*) ;

__attribute__((used)) static void fcopy_poll_wrapper(void *channel)
{

 fcopy_transaction.state = HVUTIL_READY;
 hv_fcopy_onchannelcallback(channel);
}
