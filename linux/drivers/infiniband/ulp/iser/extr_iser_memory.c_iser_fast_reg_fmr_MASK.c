#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct iser_reg_resources {struct ib_fmr_pool* fmr_pool; struct iser_page_vec* page_vec; } ;
struct TYPE_8__ {int /*<<< orphan*/  length; int /*<<< orphan*/  iova; int /*<<< orphan*/  page_size; } ;
struct iser_page_vec {TYPE_4__ fake_mr; int /*<<< orphan*/ * pages; scalar_t__ npages; } ;
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; int /*<<< orphan*/  lkey; } ;
struct iser_mem_reg {TYPE_3__ sge; int /*<<< orphan*/  rkey; struct ib_pool_fmr* mem_h; } ;
struct iser_device {int /*<<< orphan*/  ib_device; } ;
struct iser_data_buf {int dma_nents; int /*<<< orphan*/  sg; } ;
struct iscsi_iser_task {TYPE_1__* iser_conn; } ;
struct ib_pool_fmr {TYPE_2__* fmr; } ;
struct ib_fmr_pool {int dummy; } ;
struct ib_conn {struct iser_device* device; } ;
struct TYPE_6__ {int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; } ;
struct TYPE_5__ {struct ib_conn ib_conn; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct ib_pool_fmr*) ; 
 int FUNC1 (struct ib_pool_fmr*) ; 
 int /*<<< orphan*/  SIZE_4K ; 
 struct ib_pool_fmr* FUNC2 (struct ib_fmr_pool*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iser_data_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iser_page_vec*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  iser_set_page ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static
int FUNC9(struct iscsi_iser_task *iser_task,
		      struct iser_data_buf *mem,
		      struct iser_reg_resources *rsc,
		      struct iser_mem_reg *reg)
{
	struct ib_conn *ib_conn = &iser_task->iser_conn->ib_conn;
	struct iser_device *device = ib_conn->device;
	struct iser_page_vec *page_vec = rsc->page_vec;
	struct ib_fmr_pool *fmr_pool = rsc->fmr_pool;
	struct ib_pool_fmr *fmr;
	int ret, plen;

	page_vec->npages = 0;
	page_vec->fake_mr.page_size = SIZE_4K;
	plen = FUNC3(&page_vec->fake_mr, mem->sg,
			      mem->dma_nents, NULL, iser_set_page);
	if (FUNC8(plen < mem->dma_nents)) {
		FUNC7("page vec too short to hold this SG\n");
		FUNC4(mem, device->ib_device);
		FUNC6(page_vec);
		return -EINVAL;
	}

	fmr  = FUNC2(fmr_pool, page_vec->pages,
				    page_vec->npages, page_vec->pages[0]);
	if (FUNC0(fmr)) {
		ret = FUNC1(fmr);
		FUNC7("ib_fmr_pool_map_phys failed: %d\n", ret);
		return ret;
	}

	reg->sge.lkey = fmr->fmr->lkey;
	reg->rkey = fmr->fmr->rkey;
	reg->sge.addr = page_vec->fake_mr.iova;
	reg->sge.length = page_vec->fake_mr.length;
	reg->mem_h = fmr;

	FUNC5("fmr reg: lkey=0x%x, rkey=0x%x, addr=0x%llx,"
		 " length=0x%x\n", reg->sge.lkey, reg->rkey,
		 reg->sge.addr, reg->sge.length);

	return 0;
}