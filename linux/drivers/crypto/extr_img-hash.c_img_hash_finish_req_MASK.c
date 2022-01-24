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
struct img_hash_request_ctx {int /*<<< orphan*/  flags; struct img_hash_dev* hdev; } ;
struct img_hash_dev {int flags; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* complete ) (TYPE_1__*,int) ;} ;
struct ahash_request {TYPE_1__ base; } ;

/* Variables and functions */
 int DRIVER_FLAGS_BUSY ; 
 int DRIVER_FLAGS_CPU ; 
 int DRIVER_FLAGS_DMA_READY ; 
 int /*<<< orphan*/  DRIVER_FLAGS_ERROR ; 
 int DRIVER_FLAGS_FINAL ; 
 int DRIVER_FLAGS_OUTPUT_READY ; 
 struct img_hash_request_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 int FUNC3 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC5(struct ahash_request *req, int err)
{
	struct img_hash_request_ctx *ctx = FUNC0(req);
	struct img_hash_dev *hdev =  ctx->hdev;

	if (!err) {
		FUNC2(req);
		if (DRIVER_FLAGS_FINAL & hdev->flags)
			err = FUNC3(req);
	} else {
		FUNC1(hdev->dev, "Hash failed with error %d\n", err);
		ctx->flags |= DRIVER_FLAGS_ERROR;
	}

	hdev->flags &= ~(DRIVER_FLAGS_DMA_READY | DRIVER_FLAGS_OUTPUT_READY |
		DRIVER_FLAGS_CPU | DRIVER_FLAGS_BUSY | DRIVER_FLAGS_FINAL);

	if (req->base.complete)
		req->base.complete(&req->base, err);
}