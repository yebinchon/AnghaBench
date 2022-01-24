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
struct device {int dummy; } ;
struct TYPE_2__ {int is_sg_map; } ;
struct chcr_ahash_req_ctx {TYPE_1__ hctx_wr; } ;
struct ahash_request {int /*<<< orphan*/  src; int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 struct chcr_ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct device *dev,
		      struct ahash_request *req)
{
	struct chcr_ahash_req_ctx *req_ctx = FUNC0(req);
	int error = 0;

	if (!req->nbytes)
		return 0;
	error = FUNC1(dev, req->src, FUNC2(req->src),
			   DMA_TO_DEVICE);
	if (!error)
		return -ENOMEM;
	req_ctx->hctx_wr.is_sg_map = 1;
	return 0;
}