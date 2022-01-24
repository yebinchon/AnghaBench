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
struct nvkm_grctx {int ctxvals_pos; int ctxvals_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_SET_CONTEXT_POINTER ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_grctx*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_grctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct nvkm_grctx *ctx, int offset)
{
	ctx->ctxvals_pos = offset;
	ctx->ctxvals_base = ctx->ctxvals_pos;

	FUNC0(ctx, ctx->ctxvals_pos);
	FUNC1(ctx, CP_SET_CONTEXT_POINTER);
}