
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {int recv_channel; } ;


 int HV_E_FAIL ;
 int hv_poll_channel (int ,int ) ;
 int kvp_poll_wrapper ;
 int kvp_respond_to_host (int *,int ) ;
 TYPE_1__ kvp_transaction ;

__attribute__((used)) static void kvp_timeout_func(struct work_struct *dummy)
{




 kvp_respond_to_host(((void*)0), HV_E_FAIL);

 hv_poll_channel(kvp_transaction.recv_channel, kvp_poll_wrapper);
}
