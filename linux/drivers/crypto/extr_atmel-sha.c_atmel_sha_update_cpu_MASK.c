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
struct atmel_sha_reqctx {int bufcnt; int /*<<< orphan*/  buffer; } ;
struct atmel_sha_dev {int /*<<< orphan*/  req; } ;

/* Variables and functions */
 struct atmel_sha_reqctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_sha_reqctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_sha_reqctx*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct atmel_sha_dev*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct atmel_sha_dev *dd)
{
	struct atmel_sha_reqctx *ctx = FUNC0(dd->req);
	int bufcnt;

	FUNC1(ctx);
	FUNC2(ctx, 0);
	bufcnt = ctx->bufcnt;
	ctx->bufcnt = 0;

	return FUNC3(dd, ctx->buffer, bufcnt, 1);
}