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
struct cc_req_mgr_handle {int /*<<< orphan*/  comptask; int /*<<< orphan*/  workq; scalar_t__ max_used_sw_slots; scalar_t__ min_free_hw_slots; scalar_t__ hw_queue_size; scalar_t__ dummy_comp_buff_dma; int /*<<< orphan*/  dummy_comp_buff; } ;
struct cc_drvdata {struct cc_req_mgr_handle* request_mgr_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 struct device* FUNC3 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cc_req_mgr_handle*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct cc_drvdata *drvdata)
{
	struct cc_req_mgr_handle *req_mgr_h = drvdata->request_mgr_handle;
	struct device *dev = FUNC3(drvdata);

	if (!req_mgr_h)
		return; /* Not allocated */

	if (req_mgr_h->dummy_comp_buff_dma) {
		FUNC2(dev, sizeof(u32), req_mgr_h->dummy_comp_buff,
				  req_mgr_h->dummy_comp_buff_dma);
	}

	FUNC1(dev, "max_used_hw_slots=%d\n", (req_mgr_h->hw_queue_size -
						req_mgr_h->min_free_hw_slots));
	FUNC1(dev, "max_used_sw_slots=%d\n", req_mgr_h->max_used_sw_slots);

#ifdef COMP_IN_WQ
	flush_workqueue(req_mgr_h->workq);
	destroy_workqueue(req_mgr_h->workq);
#else
	/* Kill tasklet */
	FUNC6(&req_mgr_h->comptask);
#endif
	FUNC5(req_mgr_h);
	drvdata->request_mgr_handle = NULL;
}