
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {int recv_channel; } ;


 int HV_E_FAIL ;
 int fcopy_poll_wrapper ;
 int fcopy_respond_to_host (int ) ;
 TYPE_1__ fcopy_transaction ;
 int hv_poll_channel (int ,int ) ;

__attribute__((used)) static void fcopy_timeout_func(struct work_struct *dummy)
{




 fcopy_respond_to_host(HV_E_FAIL);
 hv_poll_channel(fcopy_transaction.recv_channel, fcopy_poll_wrapper);
}
