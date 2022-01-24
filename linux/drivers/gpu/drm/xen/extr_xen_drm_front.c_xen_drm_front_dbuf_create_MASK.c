#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
typedef  void* u32 ;
struct TYPE_9__ {int /*<<< orphan*/  flags; void* bpp; void* height; void* width; void* dbuf_cookie; void* buffer_sz; int /*<<< orphan*/  gref_directory; } ;
struct TYPE_10__ {TYPE_3__ dbuf_create; } ;
struct xendispl_req {TYPE_4__ op; } ;
struct xen_front_pgdir_shbuf_cfg {scalar_t__ be_alloc; int /*<<< orphan*/ * pgdir; struct page** pages; int /*<<< orphan*/  num_pages; int /*<<< orphan*/  xb_dev; } ;
struct TYPE_8__ {scalar_t__ be_alloc; } ;
struct xen_drm_front_info {int /*<<< orphan*/  dbuf_list; int /*<<< orphan*/  io_lock; TYPE_2__ cfg; int /*<<< orphan*/  xb_dev; TYPE_1__* evt_pairs; } ;
struct TYPE_11__ {int /*<<< orphan*/  req_io_lock; } ;
struct TYPE_12__ {TYPE_5__ req; } ;
struct xen_drm_front_evtchnl {TYPE_6__ u; } ;
struct xen_drm_front_dbuf {int /*<<< orphan*/  shbuf; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  buf_cfg ;
struct TYPE_7__ {struct xen_drm_front_evtchnl req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 size_t GENERIC_OP_EVT_CHNL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  XENDISPL_DBUF_FLG_REQ_ALLOC ; 
 int /*<<< orphan*/  XENDISPL_OP_DBUF_CREATE ; 
 struct xendispl_req* FUNC1 (struct xen_drm_front_evtchnl*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xen_drm_front_evtchnl*,struct xendispl_req*) ; 
 int FUNC3 (struct xen_drm_front_evtchnl*) ; 
 int /*<<< orphan*/  FUNC4 (struct xen_drm_front_info*,struct xen_drm_front_dbuf*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*) ; 
 struct xen_drm_front_dbuf* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xen_front_pgdir_shbuf_cfg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (int) ; 
 int FUNC13 (struct xen_front_pgdir_shbuf_cfg*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct xen_drm_front_info *front_info,
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
	if (FUNC12(!evtchnl))
		return -EIO;

	dbuf = FUNC6(sizeof(*dbuf), GFP_KERNEL);
	if (!dbuf)
		return -ENOMEM;

	FUNC4(front_info, dbuf, dbuf_cookie);

	FUNC7(&buf_cfg, 0, sizeof(buf_cfg));
	buf_cfg.xb_dev = front_info->xb_dev;
	buf_cfg.num_pages = FUNC0(size, PAGE_SIZE);
	buf_cfg.pages = pages;
	buf_cfg.pgdir = &dbuf->shbuf;
	buf_cfg.be_alloc = front_info->cfg.be_alloc;

	ret = FUNC13(&buf_cfg);
	if (ret < 0)
		goto fail_shbuf_alloc;

	FUNC8(&evtchnl->u.req.req_io_lock);

	FUNC10(&front_info->io_lock, flags);
	req = FUNC1(evtchnl, XENDISPL_OP_DBUF_CREATE);
	req->op.dbuf_create.gref_directory =
			FUNC14(&dbuf->shbuf);
	req->op.dbuf_create.buffer_sz = size;
	req->op.dbuf_create.dbuf_cookie = dbuf_cookie;
	req->op.dbuf_create.width = width;
	req->op.dbuf_create.height = height;
	req->op.dbuf_create.bpp = bpp;
	if (buf_cfg.be_alloc)
		req->op.dbuf_create.flags |= XENDISPL_DBUF_FLG_REQ_ALLOC;

	ret = FUNC2(evtchnl, req);
	FUNC11(&front_info->io_lock, flags);

	if (ret < 0)
		goto fail;

	ret = FUNC3(evtchnl);
	if (ret < 0)
		goto fail;

	ret = FUNC15(&dbuf->shbuf);
	if (ret < 0)
		goto fail;

	FUNC9(&evtchnl->u.req.req_io_lock);
	return 0;

fail:
	FUNC9(&evtchnl->u.req.req_io_lock);
fail_shbuf_alloc:
	FUNC5(&front_info->dbuf_list, dbuf_cookie);
	return ret;
}