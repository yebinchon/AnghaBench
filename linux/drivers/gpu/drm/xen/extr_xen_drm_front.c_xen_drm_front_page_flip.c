
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {int fb_cookie; } ;
struct TYPE_8__ {TYPE_2__ pg_flip; } ;
struct xendispl_req {TYPE_3__ op; } ;
struct xen_drm_front_info {int num_evt_pairs; int io_lock; TYPE_1__* evt_pairs; } ;
struct TYPE_9__ {int req_io_lock; } ;
struct TYPE_10__ {TYPE_4__ req; } ;
struct xen_drm_front_evtchnl {TYPE_5__ u; } ;
struct TYPE_6__ {struct xen_drm_front_evtchnl req; } ;


 int EINVAL ;
 int XENDISPL_OP_PG_FLIP ;
 struct xendispl_req* be_prepare_req (struct xen_drm_front_evtchnl*,int ) ;
 int be_stream_do_io (struct xen_drm_front_evtchnl*,struct xendispl_req*) ;
 int be_stream_wait_io (struct xen_drm_front_evtchnl*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

int xen_drm_front_page_flip(struct xen_drm_front_info *front_info,
       int conn_idx, u64 fb_cookie)
{
 struct xen_drm_front_evtchnl *evtchnl;
 struct xendispl_req *req;
 unsigned long flags;
 int ret;

 if (unlikely(conn_idx >= front_info->num_evt_pairs))
  return -EINVAL;

 evtchnl = &front_info->evt_pairs[conn_idx].req;

 mutex_lock(&evtchnl->u.req.req_io_lock);

 spin_lock_irqsave(&front_info->io_lock, flags);
 req = be_prepare_req(evtchnl, XENDISPL_OP_PG_FLIP);
 req->op.pg_flip.fb_cookie = fb_cookie;

 ret = be_stream_do_io(evtchnl, req);
 spin_unlock_irqrestore(&front_info->io_lock, flags);

 if (ret == 0)
  ret = be_stream_wait_io(evtchnl);

 mutex_unlock(&evtchnl->u.req.req_io_lock);
 return ret;
}
