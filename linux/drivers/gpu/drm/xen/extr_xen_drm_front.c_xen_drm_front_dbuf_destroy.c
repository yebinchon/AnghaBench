
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_9__ {int dbuf_cookie; } ;
struct TYPE_10__ {TYPE_3__ dbuf_destroy; } ;
struct xendispl_req {TYPE_4__ op; } ;
struct TYPE_8__ {int be_alloc; } ;
struct xen_drm_front_info {int dbuf_list; int io_lock; TYPE_2__ cfg; TYPE_1__* evt_pairs; } ;
struct TYPE_11__ {int req_io_lock; } ;
struct TYPE_12__ {TYPE_5__ req; } ;
struct xen_drm_front_evtchnl {TYPE_6__ u; } ;
struct TYPE_7__ {struct xen_drm_front_evtchnl req; } ;


 int EIO ;
 size_t GENERIC_OP_EVT_CHNL ;
 int XENDISPL_OP_DBUF_DESTROY ;
 struct xendispl_req* be_prepare_req (struct xen_drm_front_evtchnl*,int ) ;
 int be_stream_do_io (struct xen_drm_front_evtchnl*,struct xendispl_req*) ;
 int be_stream_wait_io (struct xen_drm_front_evtchnl*) ;
 int dbuf_free (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int xen_drm_front_dbuf_destroy(struct xen_drm_front_info *front_info,
          u64 dbuf_cookie)
{
 struct xen_drm_front_evtchnl *evtchnl;
 struct xendispl_req *req;
 unsigned long flags;
 bool be_alloc;
 int ret;

 evtchnl = &front_info->evt_pairs[GENERIC_OP_EVT_CHNL].req;
 if (unlikely(!evtchnl))
  return -EIO;

 be_alloc = front_info->cfg.be_alloc;





 if (be_alloc)
  dbuf_free(&front_info->dbuf_list, dbuf_cookie);

 mutex_lock(&evtchnl->u.req.req_io_lock);

 spin_lock_irqsave(&front_info->io_lock, flags);
 req = be_prepare_req(evtchnl, XENDISPL_OP_DBUF_DESTROY);
 req->op.dbuf_destroy.dbuf_cookie = dbuf_cookie;

 ret = be_stream_do_io(evtchnl, req);
 spin_unlock_irqrestore(&front_info->io_lock, flags);

 if (ret == 0)
  ret = be_stream_wait_io(evtchnl);





 if (!be_alloc)
  dbuf_free(&front_info->dbuf_list, dbuf_cookie);

 mutex_unlock(&evtchnl->u.req.req_io_lock);
 return ret;
}
