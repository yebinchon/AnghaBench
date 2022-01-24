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
struct device {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_req_mgr_handle {size_t req_queue_head; int req_queue_tail; unsigned int max_used_sw_slots; unsigned int q_free_slots; struct cc_hw_desc compl_desc; struct cc_crypto_req* req_queue; } ;
struct cc_drvdata {struct cc_req_mgr_handle* request_mgr_handle; } ;
struct cc_crypto_req {int dummy; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int MAX_REQUEST_QUEUE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct device* FUNC2 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct cc_drvdata*,struct cc_hw_desc*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct cc_drvdata *drvdata,
			      struct cc_crypto_req *cc_req,
			      struct cc_hw_desc *desc, unsigned int len,
				bool add_comp)
{
	struct cc_req_mgr_handle *req_mgr_h = drvdata->request_mgr_handle;
	unsigned int used_sw_slots;
	unsigned int total_seq_len = len; /*initial sequence length*/
	struct device *dev = FUNC2(drvdata);

	used_sw_slots = ((req_mgr_h->req_queue_head -
			  req_mgr_h->req_queue_tail) &
			 (MAX_REQUEST_QUEUE_SIZE - 1));
	if (used_sw_slots > req_mgr_h->max_used_sw_slots)
		req_mgr_h->max_used_sw_slots = used_sw_slots;

	/* Enqueue request - must be locked with HW lock*/
	req_mgr_h->req_queue[req_mgr_h->req_queue_head] = *cc_req;
	req_mgr_h->req_queue_head = (req_mgr_h->req_queue_head + 1) &
				    (MAX_REQUEST_QUEUE_SIZE - 1);
	/* TODO: Use circ_buf.h ? */

	FUNC0(dev, "Enqueue request head=%u\n", req_mgr_h->req_queue_head);

	/*
	 * We are about to push command to the HW via the command registers
	 * that may refernece hsot memory. We need to issue a memory barrier
	 * to make sure there are no outstnading memory writes
	 */
	FUNC4();

	/* STAT_PHASE_4: Push sequence */

	FUNC3(drvdata, desc, len);

	if (add_comp) {
		FUNC3(drvdata, &req_mgr_h->compl_desc, 1);
		total_seq_len++;
	}

	if (req_mgr_h->q_free_slots < total_seq_len) {
		/* This situation should never occur. Maybe indicating problem
		 * with resuming power. Set the free slot count to 0 and hope
		 * for the best.
		 */
		FUNC1(dev, "HW free slot count mismatch.");
		req_mgr_h->q_free_slots = 0;
	} else {
		/* Update the free slots in HW queue */
		req_mgr_h->q_free_slots -= total_seq_len;
	}

	/* Operation still in process */
	return -EINPROGRESS;
}