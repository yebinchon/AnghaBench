
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct xendispl_req {scalar_t__ id; int operation; } ;
struct TYPE_6__ {int req_prod_pvt; } ;
struct TYPE_4__ {TYPE_3__ ring; } ;
struct TYPE_5__ {TYPE_1__ req; } ;
struct xen_drm_front_evtchnl {scalar_t__ evt_id; int evt_next_id; TYPE_2__ u; } ;


 struct xendispl_req* RING_GET_REQUEST (TYPE_3__*,int ) ;

__attribute__((used)) static struct xendispl_req *
be_prepare_req(struct xen_drm_front_evtchnl *evtchnl, u8 operation)
{
 struct xendispl_req *req;

 req = RING_GET_REQUEST(&evtchnl->u.req.ring,
          evtchnl->u.req.ring.req_prod_pvt);
 req->operation = operation;
 req->id = evtchnl->evt_next_id++;
 evtchnl->evt_id = req->id;
 return req;
}
