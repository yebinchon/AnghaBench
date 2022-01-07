
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mpa_v2_conn_params {int dummy; } ;
struct mpa_message {int dummy; } ;
struct iw_cm_event {int status; scalar_t__ private_data; scalar_t__ private_data_len; void* ird; void* ord; int remote_addr; int local_addr; int event; } ;
struct TYPE_4__ {TYPE_1__* cm_id; int history; int dev; int remote_addr; int local_addr; } ;
struct c4iw_ep {TYPE_2__ com; int hwtid; scalar_t__ mpa_pkt; scalar_t__ plen; void* ord; void* ird; int tried_with_mpa_v1; } ;
typedef int event ;
struct TYPE_3__ {int (* event_handler ) (TYPE_1__*,struct iw_cm_event*) ;} ;


 int CONN_RPL_UPCALL ;
 int ECONNREFUSED ;
 int IW_CM_EVENT_CONNECT_REPLY ;
 void* cur_max_read_depth (int ) ;
 int deref_cm_id (TYPE_2__*) ;
 int memcpy (int *,int *,int) ;
 int memset (struct iw_cm_event*,int ,int) ;
 int pr_debug (char*,struct c4iw_ep*,int ,int) ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_1__*,struct iw_cm_event*) ;

__attribute__((used)) static void connect_reply_upcall(struct c4iw_ep *ep, int status)
{
 struct iw_cm_event event;

 pr_debug("ep %p tid %u status %d\n",
   ep, ep->hwtid, status);
 memset(&event, 0, sizeof(event));
 event.event = IW_CM_EVENT_CONNECT_REPLY;
 event.status = status;
 memcpy(&event.local_addr, &ep->com.local_addr,
        sizeof(ep->com.local_addr));
 memcpy(&event.remote_addr, &ep->com.remote_addr,
        sizeof(ep->com.remote_addr));

 if ((status == 0) || (status == -ECONNREFUSED)) {
  if (!ep->tried_with_mpa_v1) {

   event.ord = ep->ird;
   event.ird = ep->ord;
   event.private_data_len = ep->plen -
    sizeof(struct mpa_v2_conn_params);
   event.private_data = ep->mpa_pkt +
    sizeof(struct mpa_message) +
    sizeof(struct mpa_v2_conn_params);
  } else {

   event.ord = cur_max_read_depth(ep->com.dev);
   event.ird = cur_max_read_depth(ep->com.dev);
   event.private_data_len = ep->plen;
   event.private_data = ep->mpa_pkt +
    sizeof(struct mpa_message);
  }
 }

 pr_debug("ep %p tid %u status %d\n", ep,
   ep->hwtid, status);
 set_bit(CONN_RPL_UPCALL, &ep->com.history);
 ep->com.cm_id->event_handler(ep->com.cm_id, &event);

 if (status < 0)
  deref_cm_id(&ep->com);
}
