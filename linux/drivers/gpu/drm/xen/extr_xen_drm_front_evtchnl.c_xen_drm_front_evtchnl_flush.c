
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int req_prod_pvt; } ;
struct TYPE_4__ {TYPE_3__ ring; } ;
struct TYPE_5__ {TYPE_1__ req; } ;
struct xen_drm_front_evtchnl {int irq; TYPE_2__ u; } ;


 int RING_PUSH_REQUESTS_AND_CHECK_NOTIFY (TYPE_3__*,int) ;
 int notify_remote_via_irq (int ) ;

void xen_drm_front_evtchnl_flush(struct xen_drm_front_evtchnl *evtchnl)
{
 int notify;

 evtchnl->u.req.ring.req_prod_pvt++;
 RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(&evtchnl->u.req.ring, notify);
 if (notify)
  notify_remote_via_irq(evtchnl->irq);
}
