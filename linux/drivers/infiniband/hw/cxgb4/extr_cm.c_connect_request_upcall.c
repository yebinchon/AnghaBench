
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mpa_v2_conn_params {int dummy; } ;
struct mpa_message {int dummy; } ;
struct iw_cm_event {scalar_t__ private_data; scalar_t__ private_data_len; void* ird; void* ord; struct c4iw_ep* provider_data; int remote_addr; int local_addr; int event; } ;
struct TYPE_7__ {int history; TYPE_2__* cm_id; int dev; int remote_addr; int local_addr; } ;
struct c4iw_ep {TYPE_1__* parent_ep; TYPE_3__ com; scalar_t__ mpa_pkt; scalar_t__ plen; void* ird; void* ord; int tried_with_mpa_v1; int hwtid; } ;
typedef int event ;
struct TYPE_6__ {int (* event_handler ) (TYPE_2__*,struct iw_cm_event*) ;} ;
struct TYPE_5__ {TYPE_3__ com; } ;


 int CONNREQ_UPCALL ;
 int IW_CM_EVENT_CONNECT_REQUEST ;
 int c4iw_get_ep (TYPE_3__*) ;
 int c4iw_put_ep (TYPE_3__*) ;
 void* cur_max_read_depth (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (struct iw_cm_event*,int ,int) ;
 int pr_debug (char*,struct c4iw_ep*,int ) ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_2__*,struct iw_cm_event*) ;

__attribute__((used)) static int connect_request_upcall(struct c4iw_ep *ep)
{
 struct iw_cm_event event;
 int ret;

 pr_debug("ep %p tid %u\n", ep, ep->hwtid);
 memset(&event, 0, sizeof(event));
 event.event = IW_CM_EVENT_CONNECT_REQUEST;
 memcpy(&event.local_addr, &ep->com.local_addr,
        sizeof(ep->com.local_addr));
 memcpy(&event.remote_addr, &ep->com.remote_addr,
        sizeof(ep->com.remote_addr));
 event.provider_data = ep;
 if (!ep->tried_with_mpa_v1) {

  event.ord = ep->ord;
  event.ird = ep->ird;
  event.private_data_len = ep->plen -
   sizeof(struct mpa_v2_conn_params);
  event.private_data = ep->mpa_pkt + sizeof(struct mpa_message) +
   sizeof(struct mpa_v2_conn_params);
 } else {

  event.ord = cur_max_read_depth(ep->com.dev);
  event.ird = cur_max_read_depth(ep->com.dev);
  event.private_data_len = ep->plen;
  event.private_data = ep->mpa_pkt + sizeof(struct mpa_message);
 }
 c4iw_get_ep(&ep->com);
 ret = ep->parent_ep->com.cm_id->event_handler(ep->parent_ep->com.cm_id,
            &event);
 if (ret)
  c4iw_put_ep(&ep->com);
 set_bit(CONNREQ_UPCALL, &ep->com.history);
 c4iw_put_ep(&ep->parent_ep->com);
 return ret;
}
