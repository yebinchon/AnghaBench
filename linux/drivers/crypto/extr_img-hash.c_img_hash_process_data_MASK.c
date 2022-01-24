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
struct img_hash_request_ctx {scalar_t__ bufcnt; } ;
struct img_hash_dev {int /*<<< orphan*/  dev; struct ahash_request* req; } ;
struct ahash_request {scalar_t__ nbytes; } ;

/* Variables and functions */
 scalar_t__ IMG_HASH_DMA_THRESHOLD ; 
 struct img_hash_request_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC2 (struct img_hash_dev*) ; 
 int FUNC3 (struct img_hash_dev*) ; 

__attribute__((used)) static int FUNC4(struct img_hash_dev *hdev)
{
	struct ahash_request *req = hdev->req;
	struct img_hash_request_ctx *ctx = FUNC0(req);
	int err = 0;

	ctx->bufcnt = 0;

	if (req->nbytes >= IMG_HASH_DMA_THRESHOLD) {
		FUNC1(hdev->dev, "process data request(%d bytes) using DMA\n",
			req->nbytes);
		err = FUNC3(hdev);
	} else {
		FUNC1(hdev->dev, "process data request(%d bytes) using CPU\n",
			req->nbytes);
		err = FUNC2(hdev);
	}
	return err;
}