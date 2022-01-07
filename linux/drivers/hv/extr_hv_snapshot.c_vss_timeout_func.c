
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {int recv_channel; } ;


 int HV_E_FAIL ;
 int hv_poll_channel (int ,int ) ;
 int pr_warn (char*) ;
 int vss_poll_wrapper ;
 int vss_respond_to_host (int ) ;
 TYPE_1__ vss_transaction ;

__attribute__((used)) static void vss_timeout_func(struct work_struct *dummy)
{



 pr_warn("VSS: timeout waiting for daemon to reply\n");
 vss_respond_to_host(HV_E_FAIL);

 hv_poll_channel(vss_transaction.recv_channel, vss_poll_wrapper);
}
