#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_17__ {size_t level; TYPE_1__* pbl; } ;
struct TYPE_21__ {int /*<<< orphan*/  creq_ring_id; TYPE_2__ creq; } ;
struct TYPE_19__ {int /*<<< orphan*/  fw_id; int /*<<< orphan*/  dma_map; } ;
struct TYPE_22__ {TYPE_4__ stats; } ;
struct bnxt_re_dev {TYPE_6__ rcfw; int /*<<< orphan*/  chip_ctx; TYPE_7__ qplib_ctx; TYPE_5__* en_dev; int /*<<< orphan*/  ibdev; int /*<<< orphan*/  flags; int /*<<< orphan*/  active_width; int /*<<< orphan*/  active_speed; int /*<<< orphan*/  worker; int /*<<< orphan*/  is_virtfn; int /*<<< orphan*/  dev_attr; TYPE_3__* msix_entries; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_20__ {int /*<<< orphan*/  pdev; } ;
struct TYPE_18__ {int vector; int /*<<< orphan*/  ring_idx; } ;
struct TYPE_16__ {int pg_count; int /*<<< orphan*/ * pg_map_arr; } ;

/* Variables and functions */
 scalar_t__ BNXT_QPLIB_CREQE_MAX_CNT ; 
 size_t BNXT_RE_AEQ_IDX ; 
 int /*<<< orphan*/  BNXT_RE_FLAG_GOT_MSIX ; 
 int /*<<< orphan*/  BNXT_RE_FLAG_IBDEV_REGISTERED ; 
 int /*<<< orphan*/  BNXT_RE_FLAG_ISSUE_ROCE_STATS ; 
 int /*<<< orphan*/  BNXT_RE_FLAG_NETDEV_REGISTERED ; 
 int /*<<< orphan*/  BNXT_RE_FLAG_QOS_WORK_REG ; 
 int /*<<< orphan*/  BNXT_RE_FLAG_RCFW_CHANNEL_EN ; 
 int /*<<< orphan*/  BNXT_RE_FLAG_RESOURCES_ALLOCATED ; 
 int /*<<< orphan*/  BNXT_RE_FLAG_RESOURCES_INITIALIZED ; 
 int /*<<< orphan*/  BNXT_RE_MAX_QPC_COUNT ; 
 int EINVAL ; 
 int /*<<< orphan*/  IB_EVENT_PORT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t PBL_LVL_0 ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_6__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int FUNC7 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bnxt_re_aeq_handler ; 
 int FUNC11 (struct bnxt_re_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bnxt_re_dev*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct bnxt_re_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct bnxt_re_dev*) ; 
 int FUNC16 (struct bnxt_re_dev*) ; 
 int FUNC17 (struct bnxt_re_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct bnxt_re_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct bnxt_re_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct bnxt_re_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct bnxt_re_dev*) ; 
 int FUNC22 (struct bnxt_re_dev*) ; 
 int FUNC23 (struct bnxt_re_dev*) ; 
 int FUNC24 (struct bnxt_re_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct bnxt_re_dev*) ; 
 int FUNC26 (struct bnxt_re_dev*) ; 
 int FUNC27 (struct bnxt_re_dev*) ; 
 int /*<<< orphan*/  bnxt_re_worker ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (char*,int) ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 
 int /*<<< orphan*/  FUNC34 (struct bnxt_re_dev*) ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC39(struct bnxt_re_dev *rdev)
{
	dma_addr_t *pg_map;
	u32 db_offt, ridx;
	int pages, vid;
	bool locked;
	u8 type;
	int rc;

	/* Acquire rtnl lock through out this function */
	FUNC35();
	locked = true;

	/* Registered a new RoCE device instance to netdev */
	rc = FUNC23(rdev);
	if (rc) {
		FUNC36();
		FUNC32("Failed to register with netedev: %#x\n", rc);
		return -EINVAL;
	}
	FUNC38(BNXT_RE_FLAG_NETDEV_REGISTERED, &rdev->flags);

	rc = FUNC26(rdev);
	if (rc) {
		FUNC28(FUNC34(rdev), "Failed to get chip context\n");
		return -EINVAL;
	}

	/* Check whether VF or PF */
	FUNC14(rdev);

	rc = FUNC24(rdev);
	if (rc) {
		FUNC32("Failed to get MSI-X vectors: %#x\n", rc);
		rc = -EINVAL;
		goto fail;
	}
	FUNC38(BNXT_RE_FLAG_GOT_MSIX, &rdev->flags);

	FUNC21(rdev);

	/* Establish RCFW Communication Channel to initialize the context
	 * memory for the function and all child VFs
	 */
	rc = FUNC2(rdev->en_dev->pdev, &rdev->rcfw,
					   &rdev->qplib_ctx,
					   BNXT_RE_MAX_QPC_COUNT);
	if (rc) {
		FUNC32("Failed to allocate RCFW Channel: %#x\n", rc);
		goto fail;
	}
	type = FUNC8(&rdev->chip_ctx);
	pg_map = rdev->rcfw.creq.pbl[PBL_LVL_0].pg_map_arr;
	pages = rdev->rcfw.creq.pbl[rdev->rcfw.creq.level].pg_count;
	ridx = rdev->msix_entries[BNXT_RE_AEQ_IDX].ring_idx;
	rc = FUNC17(rdev, pg_map, pages, type,
				    BNXT_QPLIB_CREQE_MAX_CNT - 1,
				    ridx, &rdev->rcfw.creq_ring_id);
	if (rc) {
		FUNC32("Failed to allocate CREQ: %#x\n", rc);
		goto free_rcfw;
	}
	db_offt = FUNC13(rdev, BNXT_RE_AEQ_IDX);
	vid = rdev->msix_entries[BNXT_RE_AEQ_IDX].vector;
	rc = FUNC4(rdev->en_dev->pdev, &rdev->rcfw,
					    vid, db_offt, rdev->is_virtfn,
					    &bnxt_re_aeq_handler);
	if (rc) {
		FUNC32("Failed to enable RCFW channel: %#x\n", rc);
		goto free_ring;
	}

	rc = FUNC7(&rdev->rcfw, &rdev->dev_attr,
				     rdev->is_virtfn);
	if (rc)
		goto disable_rcfw;
	if (!rdev->is_virtfn)
		FUNC25(rdev);

	rc = FUNC1(rdev->en_dev->pdev, &rdev->qplib_ctx, 0,
				  FUNC10(&rdev->chip_ctx));
	if (rc) {
		FUNC32("Failed to allocate QPLIB context: %#x\n", rc);
		goto disable_rcfw;
	}
	rc = FUNC19(rdev,
					 rdev->qplib_ctx.stats.dma_map,
					 &rdev->qplib_ctx.stats.fw_id);
	if (rc) {
		FUNC32("Failed to allocate stats context: %#x\n", rc);
		goto free_ctx;
	}

	rc = FUNC9(&rdev->rcfw, &rdev->qplib_ctx,
				  rdev->is_virtfn);
	if (rc) {
		FUNC32("Failed to initialize RCFW: %#x\n", rc);
		goto free_sctx;
	}
	FUNC38(BNXT_RE_FLAG_RCFW_CHANNEL_EN, &rdev->flags);

	/* Resources based on the 'new' device caps */
	rc = FUNC11(rdev);
	if (rc) {
		FUNC32("Failed to allocate resources: %#x\n", rc);
		goto fail;
	}
	FUNC38(BNXT_RE_FLAG_RESOURCES_ALLOCATED, &rdev->flags);
	rc = FUNC16(rdev);
	if (rc) {
		FUNC32("Failed to initialize resources: %#x\n", rc);
		goto fail;
	}

	FUNC38(BNXT_RE_FLAG_RESOURCES_INITIALIZED, &rdev->flags);

	if (!rdev->is_virtfn) {
		rc = FUNC27(rdev);
		if (rc)
			FUNC33("RoCE priority not yet configured\n");

		FUNC0(&rdev->worker, bnxt_re_worker);
		FUNC38(BNXT_RE_FLAG_QOS_WORK_REG, &rdev->flags);
		FUNC37(&rdev->worker, FUNC31(30000));
	}

	FUNC36();
	locked = false;

	/* Register ib dev */
	rc = FUNC22(rdev);
	if (rc) {
		FUNC32("Failed to register with IB: %#x\n", rc);
		goto fail;
	}
	FUNC38(BNXT_RE_FLAG_IBDEV_REGISTERED, &rdev->flags);
	FUNC29(FUNC34(rdev), "Device registered successfully");
	FUNC30(&rdev->ibdev, 1, &rdev->active_speed,
			 &rdev->active_width);
	FUNC38(BNXT_RE_FLAG_ISSUE_ROCE_STATS, &rdev->flags);
	FUNC12(&rdev->ibdev, NULL, 1, IB_EVENT_PORT_ACTIVE);

	return 0;
free_sctx:
	FUNC20(rdev, rdev->qplib_ctx.stats.fw_id);
free_ctx:
	FUNC5(rdev->en_dev->pdev, &rdev->qplib_ctx);
disable_rcfw:
	FUNC3(&rdev->rcfw);
free_ring:
	type = FUNC8(&rdev->chip_ctx);
	FUNC18(rdev, rdev->rcfw.creq_ring_id, type);
free_rcfw:
	FUNC6(&rdev->rcfw);
fail:
	if (!locked)
		FUNC35();
	FUNC15(rdev);
	FUNC36();

	return rc;
}