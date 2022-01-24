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
struct img_hash_request_ctx {int flags; int /*<<< orphan*/  dma_ct; int /*<<< orphan*/  sg; } ;
struct img_hash_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int DRIVER_FLAGS_SG ; 
 struct img_hash_request_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct img_hash_dev *hdev)
{
	struct img_hash_request_ctx *ctx = FUNC0(hdev->req);

	if (ctx->flags & DRIVER_FLAGS_SG)
		FUNC1(hdev->dev, ctx->sg, ctx->dma_ct, DMA_TO_DEVICE);

	return 0;
}