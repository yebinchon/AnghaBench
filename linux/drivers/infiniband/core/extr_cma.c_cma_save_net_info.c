
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct rdma_cm_id {int dummy; } ;
struct TYPE_3__ {int * primary_path; } ;
struct TYPE_4__ {TYPE_1__ req_rcvd; } ;
struct ib_cm_event {scalar_t__ event; TYPE_2__ param; } ;
typedef scalar_t__ sa_family_t ;
typedef int __be64 ;


 scalar_t__ AF_IB ;
 scalar_t__ IB_CM_REQ_RECEIVED ;
 scalar_t__ IB_CM_SIDR_REQ_RECEIVED ;
 int cma_save_ib_info (struct sockaddr*,struct sockaddr*,struct rdma_cm_id const*,int *) ;
 int cma_save_ip_info (struct sockaddr*,struct sockaddr*,struct ib_cm_event const*,int ) ;

__attribute__((used)) static int cma_save_net_info(struct sockaddr *src_addr,
        struct sockaddr *dst_addr,
        const struct rdma_cm_id *listen_id,
        const struct ib_cm_event *ib_event,
        sa_family_t sa_family, __be64 service_id)
{
 if (sa_family == AF_IB) {
  if (ib_event->event == IB_CM_REQ_RECEIVED)
   cma_save_ib_info(src_addr, dst_addr, listen_id,
      ib_event->param.req_rcvd.primary_path);
  else if (ib_event->event == IB_CM_SIDR_REQ_RECEIVED)
   cma_save_ib_info(src_addr, dst_addr, listen_id, ((void*)0));
  return 0;
 }

 return cma_save_ip_info(src_addr, dst_addr, ib_event, service_id);
}
