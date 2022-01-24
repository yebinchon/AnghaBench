#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct device {int dummy; } ;
struct cc_req_mgr_handle {unsigned int req_queue_tail; unsigned int req_queue_head; unsigned int axi_completed; struct cc_crypto_req* req_queue; } ;
struct cc_drvdata {int irq; struct cc_req_mgr_handle* request_mgr_handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  slot; int /*<<< orphan*/  alg; scalar_t__ is_cpp; } ;
struct cc_crypto_req {int /*<<< orphan*/  user_arg; int /*<<< orphan*/  (* user_cb ) (struct device*,int /*<<< orphan*/ ,int) ;TYPE_1__ cpp; } ;

/* Variables and functions */
 int EPERM ; 
 int MAX_REQUEST_QUEUE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned int) ; 
 struct device* FUNC4 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct cc_drvdata *drvdata)
{
	struct cc_crypto_req *cc_req;
	struct device *dev = FUNC4(drvdata);
	struct cc_req_mgr_handle *request_mgr_handle =
						drvdata->request_mgr_handle;
	unsigned int *tail = &request_mgr_handle->req_queue_tail;
	unsigned int *head = &request_mgr_handle->req_queue_head;
	int rc;
	u32 mask;

	while (request_mgr_handle->axi_completed) {
		request_mgr_handle->axi_completed--;

		/* Dequeue request */
		if (*head == *tail) {
			/* We are supposed to handle a completion but our
			 * queue is empty. This is not normal. Return and
			 * hope for the best.
			 */
			FUNC3(dev, "Request queue is empty head == tail %u\n",
				*head);
			break;
		}

		cc_req = &request_mgr_handle->req_queue[*tail];

		if (cc_req->cpp.is_cpp) {

			FUNC2(dev, "CPP request completion slot: %d alg:%d\n",
				cc_req->cpp.slot, cc_req->cpp.alg);
			mask = FUNC0(cc_req->cpp.alg,
					       cc_req->cpp.slot);
			rc = (drvdata->irq & mask ? -EPERM : 0);
			FUNC2(dev, "Got mask: %x irq: %x rc: %d\n", mask,
				drvdata->irq, rc);
		} else {
			FUNC2(dev, "None CPP request completion\n");
			rc = 0;
		}

		if (cc_req->user_cb)
			cc_req->user_cb(dev, cc_req->user_arg, rc);
		*tail = (*tail + 1) & (MAX_REQUEST_QUEUE_SIZE - 1);
		FUNC2(dev, "Dequeue request tail=%u\n", *tail);
		FUNC2(dev, "Request completed. axi_completed=%d\n",
			request_mgr_handle->axi_completed);
		FUNC1(dev);
	}
}