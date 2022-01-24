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
struct img_hash_request_ctx {int /*<<< orphan*/  total; int /*<<< orphan*/  buffer; scalar_t__ bufcnt; int /*<<< orphan*/  sg; } ;
struct img_hash_dev {int flags; TYPE_1__* req; } ;
struct TYPE_2__ {int /*<<< orphan*/  nbytes; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int DRIVER_FLAGS_CPU ; 
 int DRIVER_FLAGS_FINAL ; 
 struct img_hash_request_ctx* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct img_hash_dev*,int) ; 
 int FUNC2 (struct img_hash_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct img_hash_dev *hdev)
{
	struct img_hash_request_ctx *ctx = FUNC0(hdev->req);

	ctx->bufcnt = FUNC3(hdev->req->src, FUNC4(ctx->sg),
					ctx->buffer, hdev->req->nbytes);

	ctx->total = hdev->req->nbytes;
	ctx->bufcnt = 0;

	hdev->flags |= (DRIVER_FLAGS_CPU | DRIVER_FLAGS_FINAL);

	FUNC1(hdev, false);

	return FUNC2(hdev, ctx->buffer, ctx->total, 1);
}