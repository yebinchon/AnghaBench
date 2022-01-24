#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct cc_req_mgr_handle {scalar_t__ hw_queue_size; scalar_t__ min_free_hw_slots; int /*<<< orphan*/  compl_desc; int /*<<< orphan*/  dummy_comp_buff_dma; int /*<<< orphan*/  dummy_comp_buff; scalar_t__ max_used_sw_slots; int /*<<< orphan*/  comptask; int /*<<< orphan*/  compwork; int /*<<< orphan*/  workq; int /*<<< orphan*/  backlog; int /*<<< orphan*/  bl_lock; int /*<<< orphan*/  hw_lock; } ;
struct cc_drvdata {struct cc_req_mgr_handle* request_mgr_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  BYPASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSCRPTR_QUEUE_SRAM_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ MIN_HW_QUEUE_SIZE ; 
 int /*<<< orphan*/  NS_BIT ; 
 scalar_t__ FUNC3 (struct cc_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  comp_handler ; 
 int /*<<< orphan*/  comp_work_handler ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct device* FUNC9 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct cc_req_mgr_handle* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct cc_drvdata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC18(struct cc_drvdata *drvdata)
{
	struct cc_req_mgr_handle *req_mgr_h;
	struct device *dev = FUNC9(drvdata);
	int rc = 0;

	req_mgr_h = FUNC11(sizeof(*req_mgr_h), GFP_KERNEL);
	if (!req_mgr_h) {
		rc = -ENOMEM;
		goto req_mgr_init_err;
	}

	drvdata->request_mgr_handle = req_mgr_h;

	FUNC16(&req_mgr_h->hw_lock);
	FUNC16(&req_mgr_h->bl_lock);
	FUNC2(&req_mgr_h->backlog);

#ifdef COMP_IN_WQ
	dev_dbg(dev, "Initializing completion workqueue\n");
	req_mgr_h->workq = create_singlethread_workqueue("ccree");
	if (!req_mgr_h->workq) {
		dev_err(dev, "Failed creating work queue\n");
		rc = -ENOMEM;
		goto req_mgr_init_err;
	}
	INIT_DELAYED_WORK(&req_mgr_h->compwork, comp_work_handler);
#else
	FUNC6(dev, "Initializing completion tasklet\n");
	FUNC17(&req_mgr_h->comptask, comp_handler,
		     (unsigned long)drvdata);
#endif
	req_mgr_h->hw_queue_size = FUNC3(drvdata,
					     FUNC0(DSCRPTR_QUEUE_SRAM_SIZE));
	FUNC6(dev, "hw_queue_size=0x%08X\n", req_mgr_h->hw_queue_size);
	if (req_mgr_h->hw_queue_size < MIN_HW_QUEUE_SIZE) {
		FUNC7(dev, "Invalid HW queue size = %u (Min. required is %u)\n",
			req_mgr_h->hw_queue_size, MIN_HW_QUEUE_SIZE);
		rc = -ENOMEM;
		goto req_mgr_init_err;
	}
	req_mgr_h->min_free_hw_slots = req_mgr_h->hw_queue_size;
	req_mgr_h->max_used_sw_slots = 0;

	/* Allocate DMA word for "dummy" completion descriptor use */
	req_mgr_h->dummy_comp_buff =
		FUNC8(dev, sizeof(u32),
				   &req_mgr_h->dummy_comp_buff_dma,
				   GFP_KERNEL);
	if (!req_mgr_h->dummy_comp_buff) {
		FUNC7(dev, "Not enough memory to allocate DMA (%zu) dropped buffer\n",
			sizeof(u32));
		rc = -ENOMEM;
		goto req_mgr_init_err;
	}

	/* Init. "dummy" completion descriptor */
	FUNC10(&req_mgr_h->compl_desc);
	FUNC12(&req_mgr_h->compl_desc, 0, sizeof(u32));
	FUNC13(&req_mgr_h->compl_desc, req_mgr_h->dummy_comp_buff_dma,
		      sizeof(u32), NS_BIT, 1);
	FUNC14(&req_mgr_h->compl_desc, BYPASS);
	FUNC15(drvdata, &req_mgr_h->compl_desc);

	return 0;

req_mgr_init_err:
	FUNC4(drvdata);
	return rc;
}