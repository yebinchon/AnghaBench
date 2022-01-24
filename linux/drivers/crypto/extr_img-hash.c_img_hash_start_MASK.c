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
typedef  int u32 ;
struct img_hash_request_ctx {int flags; } ;
struct img_hash_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_CONTROL ; 
 int CR_CONTROL_ALGO_MD5 ; 
 int CR_CONTROL_ALGO_SHA1 ; 
 int CR_CONTROL_ALGO_SHA224 ; 
 int CR_CONTROL_ALGO_SHA256 ; 
 int CR_CONTROL_BYTE_ORDER_SHIFT ; 
 int DRIVER_FLAGS_MD5 ; 
 int DRIVER_FLAGS_SHA1 ; 
 int DRIVER_FLAGS_SHA224 ; 
 int DRIVER_FLAGS_SHA256 ; 
 int IMG_HASH_BYTE_ORDER ; 
 struct img_hash_request_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct img_hash_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct img_hash_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct img_hash_dev *hdev, bool dma)
{
	struct img_hash_request_ctx *ctx = FUNC0(hdev->req);
	u32 cr = IMG_HASH_BYTE_ORDER << CR_CONTROL_BYTE_ORDER_SHIFT;

	if (ctx->flags & DRIVER_FLAGS_MD5)
		cr |= CR_CONTROL_ALGO_MD5;
	else if (ctx->flags & DRIVER_FLAGS_SHA1)
		cr |= CR_CONTROL_ALGO_SHA1;
	else if (ctx->flags & DRIVER_FLAGS_SHA224)
		cr |= CR_CONTROL_ALGO_SHA224;
	else if (ctx->flags & DRIVER_FLAGS_SHA256)
		cr |= CR_CONTROL_ALGO_SHA256;
	FUNC1(hdev->dev, "Starting hash process\n");
	FUNC3(hdev, CR_CONTROL, cr);

	/*
	 * The hardware block requires two cycles between writing the control
	 * register and writing the first word of data in non DMA mode, to
	 * ensure the first data write is not grouped in burst with the control
	 * register write a read is issued to 'flush' the bus.
	 */
	if (!dma)
		FUNC2(hdev, CR_CONTROL);
}