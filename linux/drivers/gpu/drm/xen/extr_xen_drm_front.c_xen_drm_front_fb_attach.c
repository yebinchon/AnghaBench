
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u64 ;
typedef void* u32 ;
struct TYPE_7__ {void* pixel_format; void* height; void* width; void* fb_cookie; void* dbuf_cookie; } ;
struct TYPE_8__ {TYPE_2__ fb_attach; } ;
struct xendispl_req {TYPE_3__ op; } ;
struct xen_drm_front_info {int io_lock; int dbuf_list; TYPE_1__* evt_pairs; } ;
struct TYPE_9__ {int req_io_lock; } ;
struct TYPE_10__ {TYPE_4__ req; } ;
struct xen_drm_front_evtchnl {TYPE_5__ u; } ;
struct xen_drm_front_dbuf {void* fb_cookie; } ;
struct TYPE_6__ {struct xen_drm_front_evtchnl req; } ;


 int EINVAL ;
 int EIO ;
 size_t GENERIC_OP_EVT_CHNL ;
 int XENDISPL_OP_FB_ATTACH ;
 struct xendispl_req* be_prepare_req (struct xen_drm_front_evtchnl*,int ) ;
 int be_stream_do_io (struct xen_drm_front_evtchnl*,struct xendispl_req*) ;
 int be_stream_wait_io (struct xen_drm_front_evtchnl*) ;
 struct xen_drm_front_dbuf* dbuf_get (int *,void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

int xen_drm_front_fb_attach(struct xen_drm_front_info *front_info,
       u64 dbuf_cookie, u64 fb_cookie, u32 width,
       u32 height, u32 pixel_format)
{
 struct xen_drm_front_evtchnl *evtchnl;
 struct xen_drm_front_dbuf *buf;
 struct xendispl_req *req;
 unsigned long flags;
 int ret;

 evtchnl = &front_info->evt_pairs[GENERIC_OP_EVT_CHNL].req;
 if (unlikely(!evtchnl))
  return -EIO;

 buf = dbuf_get(&front_info->dbuf_list, dbuf_cookie);
 if (!buf)
  return -EINVAL;

 buf->fb_cookie = fb_cookie;

 mutex_lock(&evtchnl->u.req.req_io_lock);

 spin_lock_irqsave(&front_info->io_lock, flags);
 req = be_prepare_req(evtchnl, XENDISPL_OP_FB_ATTACH);
 req->op.fb_attach.dbuf_cookie = dbuf_cookie;
 req->op.fb_attach.fb_cookie = fb_cookie;
 req->op.fb_attach.width = width;
 req->op.fb_attach.height = height;
 req->op.fb_attach.pixel_format = pixel_format;

 ret = be_stream_do_io(evtchnl, req);
 spin_unlock_irqrestore(&front_info->io_lock, flags);

 if (ret == 0)
  ret = be_stream_wait_io(evtchnl);

 mutex_unlock(&evtchnl->u.req.req_io_lock);
 return ret;
}
