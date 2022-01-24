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
struct nvkm_grctx {int ctxvals_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALWAYS ; 
 int /*<<< orphan*/  AUTO_LOAD ; 
 int /*<<< orphan*/  AUTO_SAVE ; 
 int /*<<< orphan*/  CLEAR ; 
 int CP_END ; 
 int CP_NEXT_TO_CURRENT ; 
 int CP_NEXT_TO_SWAP ; 
 int /*<<< orphan*/  IDLE ; 
 int /*<<< orphan*/  LOAD ; 
 int /*<<< orphan*/  NOT_PENDING ; 
 int /*<<< orphan*/  PENDING ; 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  SWAP_DIRECTION ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UNK54 ; 
 int /*<<< orphan*/  UNK57 ; 
 int /*<<< orphan*/  USER_LOAD ; 
 int /*<<< orphan*/  USER_SAVE ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_grctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cp_check_load ; 
 int /*<<< orphan*/  cp_exit ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_grctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_grctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_grctx*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_grctx*,int) ; 
 int /*<<< orphan*/  cp_prepare_exit ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_grctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cp_setup_auto_load ; 
 int /*<<< orphan*/  cp_setup_load ; 
 int /*<<< orphan*/  cp_setup_save ; 
 int /*<<< orphan*/  cp_swap_state ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_grctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_grctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_grctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct nvkm_grctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct nvkm_grctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct nvkm_grctx*) ; 

__attribute__((used)) static void
FUNC12(struct nvkm_grctx *ctx)
{
	/* decide whether we're loading/unloading the context */
	FUNC0 (ctx, AUTO_SAVE, PENDING, cp_setup_save);
	FUNC0 (ctx, USER_SAVE, PENDING, cp_setup_save);

	FUNC2(ctx, cp_check_load);
	FUNC0 (ctx, AUTO_LOAD, PENDING, cp_setup_auto_load);
	FUNC0 (ctx, USER_LOAD, PENDING, cp_setup_load);
	FUNC0 (ctx, ALWAYS, TRUE, cp_exit);

	/* setup for context load */
	FUNC2(ctx, cp_setup_auto_load);
	FUNC6(ctx, STATUS, IDLE);
	FUNC3 (ctx, CP_NEXT_TO_SWAP);
	FUNC2(ctx, cp_setup_load);
	FUNC6(ctx, STATUS, IDLE);
	FUNC5 (ctx, SWAP_DIRECTION, LOAD);
	FUNC3 (ctx, 0x00910880); /* ?? */
	FUNC3 (ctx, 0x00901ffe); /* ?? */
	FUNC3 (ctx, 0x01940000); /* ?? */
	FUNC1 (ctx, 0x20);
	FUNC3 (ctx, 0x0060000b); /* ?? */
	FUNC6(ctx, UNK57, CLEAR);
	FUNC3 (ctx, 0x0060000c); /* ?? */
	FUNC0 (ctx, ALWAYS, TRUE, cp_swap_state);

	/* setup for context save */
	FUNC2(ctx, cp_setup_save);
	FUNC5 (ctx, SWAP_DIRECTION, SAVE);

	/* general PGRAPH state */
	FUNC2(ctx, cp_swap_state);
	FUNC4 (ctx, 0x00020/4);
	FUNC7(ctx);
	FUNC6(ctx, STATUS, IDLE);

	/* 3D state, block 1 */
	FUNC0 (ctx, UNK54, CLEAR, cp_prepare_exit);
	FUNC9(ctx);
	FUNC6(ctx, STATUS, IDLE);

	/* 3D state, block 2 */
	FUNC10(ctx);

	/* Some other block of "random" state */
	FUNC11(ctx);

	/* Per-vertex shader state */
	FUNC4 (ctx, ctx->ctxvals_pos);
	FUNC8(ctx);

	/* pre-exit state updates */
	FUNC2(ctx, cp_prepare_exit);
	FUNC0 (ctx, SWAP_DIRECTION, SAVE, cp_check_load);
	FUNC0 (ctx, USER_SAVE, PENDING, cp_exit);
	FUNC3 (ctx, CP_NEXT_TO_CURRENT);

	FUNC2(ctx, cp_exit);
	FUNC5 (ctx, USER_SAVE, NOT_PENDING);
	FUNC5 (ctx, USER_LOAD, NOT_PENDING);
	FUNC3 (ctx, CP_END);
}