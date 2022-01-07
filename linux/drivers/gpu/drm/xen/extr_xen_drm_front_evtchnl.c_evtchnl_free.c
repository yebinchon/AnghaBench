
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xen_drm_front_info {int xb_dev; } ;
struct TYPE_5__ {scalar_t__ sring; } ;
struct TYPE_7__ {int completion; int resp_status; TYPE_1__ ring; } ;
struct TYPE_6__ {scalar_t__ page; } ;
struct TYPE_8__ {TYPE_3__ req; TYPE_2__ evt; } ;
struct xen_drm_front_evtchnl {scalar_t__ type; scalar_t__ gref; scalar_t__ port; scalar_t__ irq; TYPE_4__ u; int state; } ;


 int EIO ;
 int EVTCHNL_STATE_DISCONNECTED ;
 scalar_t__ EVTCHNL_TYPE_EVT ;
 scalar_t__ EVTCHNL_TYPE_REQ ;
 scalar_t__ GRANT_INVALID_REF ;
 int complete_all (int *) ;
 int gnttab_end_foreign_access (scalar_t__,int ,unsigned long) ;
 int memset (struct xen_drm_front_evtchnl*,int ,int) ;
 int unbind_from_irqhandler (scalar_t__,struct xen_drm_front_evtchnl*) ;
 int xenbus_free_evtchn (int ,scalar_t__) ;

__attribute__((used)) static void evtchnl_free(struct xen_drm_front_info *front_info,
    struct xen_drm_front_evtchnl *evtchnl)
{
 unsigned long page = 0;

 if (evtchnl->type == EVTCHNL_TYPE_REQ)
  page = (unsigned long)evtchnl->u.req.ring.sring;
 else if (evtchnl->type == EVTCHNL_TYPE_EVT)
  page = (unsigned long)evtchnl->u.evt.page;
 if (!page)
  return;

 evtchnl->state = EVTCHNL_STATE_DISCONNECTED;

 if (evtchnl->type == EVTCHNL_TYPE_REQ) {

  evtchnl->u.req.resp_status = -EIO;
  complete_all(&evtchnl->u.req.completion);
 }

 if (evtchnl->irq)
  unbind_from_irqhandler(evtchnl->irq, evtchnl);

 if (evtchnl->port)
  xenbus_free_evtchn(front_info->xb_dev, evtchnl->port);


 if (evtchnl->gref != GRANT_INVALID_REF)
  gnttab_end_foreign_access(evtchnl->gref, 0, page);

 memset(evtchnl, 0, sizeof(*evtchnl));
}
