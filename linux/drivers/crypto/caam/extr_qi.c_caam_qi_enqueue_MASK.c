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
struct qm_fd {int dummy; } ;
struct device {int dummy; } ;
struct caam_drv_req {TYPE_1__* drv_ctx; int /*<<< orphan*/ * fd_sgt; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  req_fq; } ;

/* Variables and functions */
 int CAAM_QI_ENQUEUE_RETRIES ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct qm_fd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qm_fd*) ; 
 int /*<<< orphan*/  FUNC6 (struct qm_fd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct qm_fd*) ; 

int FUNC9(struct device *qidev, struct caam_drv_req *req)
{
	struct qm_fd fd;
	dma_addr_t addr;
	int ret;
	int num_retries = 0;

	FUNC5(&fd);
	FUNC6(&fd, FUNC7(&req->fd_sgt[1]));

	addr = FUNC1(qidev, req->fd_sgt, sizeof(req->fd_sgt),
			      DMA_BIDIRECTIONAL);
	if (FUNC2(qidev, addr)) {
		FUNC0(qidev, "DMA mapping error for QI enqueue request\n");
		return -EIO;
	}
	FUNC4(&fd, addr);

	do {
		ret = FUNC8(req->drv_ctx->req_fq, &fd);
		if (FUNC3(!ret))
			return 0;

		if (ret != -EBUSY)
			break;
		num_retries++;
	} while (num_retries < CAAM_QI_ENQUEUE_RETRIES);

	FUNC0(qidev, "qman_enqueue failed: %d\n", ret);

	return ret;
}