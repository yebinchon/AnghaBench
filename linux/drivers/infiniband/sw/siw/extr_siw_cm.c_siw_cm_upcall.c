
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_6__ {int pd_len; } ;
struct TYPE_7__ {TYPE_2__ params; } ;
struct TYPE_8__ {int pdata; TYPE_3__ hdr; } ;
struct siw_cep {scalar_t__ qp; int sock; scalar_t__ enhanced_rdma_conn_est; TYPE_4__ mpa; int ird; int ord; struct iw_cm_id* cm_id; TYPE_1__* listen_cep; } ;
struct mpa_v2_data {int dummy; } ;
struct iw_cm_id {int (* event_handler ) (struct iw_cm_id*,struct iw_cm_event*) ;} ;
struct iw_cm_event {int status; int event; int private_data; int remote_addr; int local_addr; scalar_t__ private_data_len; int ord; int ird; struct siw_cep* provider_data; } ;
typedef int event ;
typedef enum iw_cm_event_type { ____Placeholder_iw_cm_event_type } iw_cm_event_type ;
struct TYPE_5__ {struct iw_cm_id* cm_id; } ;


 int IW_CM_EVENT_CONNECT_REPLY ;
 int IW_CM_EVENT_CONNECT_REQUEST ;
 int IW_CM_EVENT_ESTABLISHED ;
 int UINT_MAX ;
 scalar_t__ be16_to_cpu (int ) ;
 int getname_local (int ,int *) ;
 int getname_peer (int ,int *) ;
 int memset (struct iw_cm_event*,int ,int) ;
 int qp_id (scalar_t__) ;
 int siw_dbg_cep (struct siw_cep*,char*,int ,int,int) ;
 int stub1 (struct iw_cm_id*,struct iw_cm_event*) ;

__attribute__((used)) static int siw_cm_upcall(struct siw_cep *cep, enum iw_cm_event_type reason,
    int status)
{
 struct iw_cm_event event;
 struct iw_cm_id *id;

 memset(&event, 0, sizeof(event));
 event.status = status;
 event.event = reason;

 if (reason == IW_CM_EVENT_CONNECT_REQUEST) {
  event.provider_data = cep;
  id = cep->listen_cep->cm_id;
 } else {
  id = cep->cm_id;
 }

 if (reason == IW_CM_EVENT_ESTABLISHED ||
     reason == IW_CM_EVENT_CONNECT_REPLY) {

  event.ird = cep->ird;
  event.ord = cep->ord;
 } else if (reason == IW_CM_EVENT_CONNECT_REQUEST) {
  event.ird = cep->ord;
  event.ord = cep->ird;
 }

 if (reason == IW_CM_EVENT_CONNECT_REQUEST ||
     reason == IW_CM_EVENT_CONNECT_REPLY) {
  u16 pd_len = be16_to_cpu(cep->mpa.hdr.params.pd_len);

  if (pd_len) {



   event.private_data_len = pd_len;
   event.private_data = cep->mpa.pdata;


   if (cep->enhanced_rdma_conn_est) {
    event.private_data_len -=
     sizeof(struct mpa_v2_data);
    event.private_data +=
     sizeof(struct mpa_v2_data);
   }
  }
  getname_local(cep->sock, &event.local_addr);
  getname_peer(cep->sock, &event.remote_addr);
 }
 siw_dbg_cep(cep, "[QP %u]: reason=%d, status=%d\n",
      cep->qp ? qp_id(cep->qp) : UINT_MAX, reason, status);

 return id->event_handler(id, &event);
}
