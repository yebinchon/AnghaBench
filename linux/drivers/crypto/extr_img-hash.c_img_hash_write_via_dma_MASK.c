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
struct img_hash_request_ctx {int /*<<< orphan*/  total; } ;
struct img_hash_dev {int flags; int /*<<< orphan*/  dma_task; int /*<<< orphan*/  dev; int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int DRIVER_FLAGS_DMA_ACTIVE ; 
 int DRIVER_FLAGS_FINAL ; 
 int EINPROGRESS ; 
 struct img_hash_request_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct img_hash_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct img_hash_dev *hdev)
{
	struct img_hash_request_ctx *ctx = FUNC0(hdev->req);

	FUNC2(hdev, true);

	FUNC1(hdev->dev, "xmit dma size: %d\n", ctx->total);

	if (!ctx->total)
		hdev->flags |= DRIVER_FLAGS_FINAL;

	hdev->flags |= DRIVER_FLAGS_DMA_ACTIVE | DRIVER_FLAGS_FINAL;

	FUNC3(&hdev->dma_task);

	return -EINPROGRESS;
}