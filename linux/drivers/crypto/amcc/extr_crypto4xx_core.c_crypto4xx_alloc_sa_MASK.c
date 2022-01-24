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
typedef  int /*<<< orphan*/  u32 ;
struct crypto4xx_ctx {int /*<<< orphan*/  sa_len; int /*<<< orphan*/ * sa_in; int /*<<< orphan*/ * sa_out; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct crypto4xx_ctx *ctx, u32 size)
{
	ctx->sa_in = FUNC0(size, 4, GFP_ATOMIC);
	if (ctx->sa_in == NULL)
		return -ENOMEM;

	ctx->sa_out = FUNC0(size, 4, GFP_ATOMIC);
	if (ctx->sa_out == NULL) {
		FUNC1(ctx->sa_in);
		ctx->sa_in = NULL;
		return -ENOMEM;
	}

	ctx->sa_len = size;

	return 0;
}