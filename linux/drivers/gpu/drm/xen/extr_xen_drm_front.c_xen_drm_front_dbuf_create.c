
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


typedef void* u64 ;
typedef void* u32 ;
struct TYPE_9__ {int flags; void* bpp; void* height; void* width; void* dbuf_cookie; void* buffer_sz; int gref_directory; } ;
struct TYPE_10__ {TYPE_3__ dbuf_create; } ;
struct xendispl_req {TYPE_4__ op; } ;
struct xen_front_pgdir_shbuf_cfg {scalar_t__ be_alloc; int * pgdir; struct page** pages; int num_pages; int xb_dev; } ;
struct TYPE_8__ {scalar_t__ be_alloc; } ;
struct xen_drm_front_info {int dbuf_list; int io_lock; TYPE_2__ cfg; int xb_dev; TYPE_1__* evt_pairs; } ;
struct TYPE_11__ {int req_io_lock; } ;
struct TYPE_12__ {TYPE_5__ req; } ;
struct xen_drm_front_evtchnl {TYPE_6__ u; } ;
struct xen_drm_front_dbuf {int shbuf; } ;
struct page {int dummy; } ;
typedef int buf_cfg ;
struct TYPE_7__ {struct xen_drm_front_evtchnl req; } ;


 int DIV_ROUND_UP (void*,int ) ;
 int EIO ;
 int ENOMEM ;
 size_t GENERIC_OP_EVT_CHNL ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int XENDISPL_DBUF_FLG_REQ_ALLOC ;
 int XENDISPL_OP_DBUF_CREATE ;
 struct xendispl_req* be_prepare_req (struct xen_drm_front_evtchnl*,int ) ;
 int be_stream_do_io (struct xen_drm_front_evtchnl*,struct xendispl_req*) ;
 int be_stream_wait_io (struct xen_drm_front_evtchnl*) ;
 int dbuf_add_to_list (struct xen_drm_front_info*,struct xen_drm_front_dbuf*,void*) ;
 int dbuf_free (int *,void*) ;
 struct xen_drm_front_dbuf* kzalloc (int,int ) ;
 int memset (struct xen_front_pgdir_shbuf_cfg*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int xen_front_pgdir_shbuf_alloc (struct xen_front_pgdir_shbuf_cfg*) ;
 int xen_front_pgdir_shbuf_get_dir_start (int *) ;
 int xen_front_pgdir_shbuf_map (int *) ;

int xen_drm_front_dbuf_create(struct xen_drm_front_info *front_info,
         u64 dbuf_cookie, u32 width, u32 height,
         u32 bpp, u64 size, struct page **pages)
{
 struct xen_drm_front_evtchnl *evtchnl;
 struct xen_drm_front_dbuf *dbuf;
 struct xendispl_req *req;
 struct xen_front_pgdir_shbuf_cfg buf_cfg;
 unsigned long flags;
 int ret;

 evtchnl = &front_info->evt_pairs[GENERIC_OP_EVT_CHNL].req;
 if (unlikely(!evtchnl))
  return -EIO;

 dbuf = kzalloc(sizeof(*dbuf), GFP_KERNEL);
 if (!dbuf)
  return -ENOMEM;

 dbuf_add_to_list(front_info, dbuf, dbuf_cookie);

 memset(&buf_cfg, 0, sizeof(buf_cfg));
 buf_cfg.xb_dev = front_info->xb_dev;
 buf_cfg.num_pages = DIV_ROUND_UP(size, PAGE_SIZE);
 buf_cfg.pages = pages;
 buf_cfg.pgdir = &dbuf->shbuf;
 buf_cfg.be_alloc = front_info->cfg.be_alloc;

 ret = xen_front_pgdir_shbuf_alloc(&buf_cfg);
 if (ret < 0)
  goto fail_shbuf_alloc;

 mutex_lock(&evtchnl->u.req.req_io_lock);

 spin_lock_irqsave(&front_info->io_lock, flags);
 req = be_prepare_req(evtchnl, XENDISPL_OP_DBUF_CREATE);
 req->op.dbuf_create.gref_directory =
   xen_front_pgdir_shbuf_get_dir_start(&dbuf->shbuf);
 req->op.dbuf_create.buffer_sz = size;
 req->op.dbuf_create.dbuf_cookie = dbuf_cookie;
 req->op.dbuf_create.width = width;
 req->op.dbuf_create.height = height;
 req->op.dbuf_create.bpp = bpp;
 if (buf_cfg.be_alloc)
  req->op.dbuf_create.flags |= XENDISPL_DBUF_FLG_REQ_ALLOC;

 ret = be_stream_do_io(evtchnl, req);
 spin_unlock_irqrestore(&front_info->io_lock, flags);

 if (ret < 0)
  goto fail;

 ret = be_stream_wait_io(evtchnl);
 if (ret < 0)
  goto fail;

 ret = xen_front_pgdir_shbuf_map(&dbuf->shbuf);
 if (ret < 0)
  goto fail;

 mutex_unlock(&evtchnl->u.req.req_io_lock);
 return 0;

fail:
 mutex_unlock(&evtchnl->u.req.req_io_lock);
fail_shbuf_alloc:
 dbuf_free(&front_info->dbuf_list, dbuf_cookie);
 return ret;
}
