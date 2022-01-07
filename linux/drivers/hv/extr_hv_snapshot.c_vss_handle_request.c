
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_8__ {int recv_channel; TYPE_3__* msg; int state; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int operation; } ;
struct TYPE_7__ {TYPE_2__ dm_info; TYPE_1__ vss_hdr; } ;


 int HVUTIL_HOSTMSG_RECEIVED ;
 int HVUTIL_READY ;
 int HV_E_FAIL ;




 int hv_poll_channel (int ,int ) ;
 int pr_debug (char*,...) ;
 int vss_poll_wrapper ;
 int vss_respond_to_host (int ) ;
 int vss_send_op () ;
 TYPE_4__ vss_transaction ;

__attribute__((used)) static void vss_handle_request(struct work_struct *dummy)
{
 switch (vss_transaction.msg->vss_hdr.operation) {







 case 128:
 case 131:
 case 129:
  if (vss_transaction.state < HVUTIL_READY) {

   pr_debug("VSS: Not ready for request.\n");
   vss_respond_to_host(HV_E_FAIL);
   return;
  }

  pr_debug("VSS: Received request for op code: %d\n",
   vss_transaction.msg->vss_hdr.operation);
  vss_transaction.state = HVUTIL_HOSTMSG_RECEIVED;
  vss_send_op();
  return;
 case 130:
  vss_transaction.msg->dm_info.flags = 0;
  break;
 default:
  break;
 }

 vss_respond_to_host(0);
 hv_poll_channel(vss_transaction.recv_channel, vss_poll_wrapper);
}
