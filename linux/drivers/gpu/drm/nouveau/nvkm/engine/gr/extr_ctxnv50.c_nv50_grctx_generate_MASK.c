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
struct nvkm_grctx {int ctxvals_base; int ctxvals_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALWAYS ; 
 int /*<<< orphan*/  AUTO_LOAD ; 
 int /*<<< orphan*/  AUTO_SAVE ; 
 int /*<<< orphan*/  BUSY ; 
 int /*<<< orphan*/  CLEAR ; 
 int /*<<< orphan*/  CP_DISABLE1 ; 
 int /*<<< orphan*/  CP_DISABLE2 ; 
 int /*<<< orphan*/  CP_ENABLE ; 
 int /*<<< orphan*/  CP_END ; 
 int /*<<< orphan*/  CP_NEWCTX ; 
 int /*<<< orphan*/  CP_NEXT_TO_CURRENT ; 
 int /*<<< orphan*/  CP_NEXT_TO_SWAP ; 
 int /*<<< orphan*/  CP_SEEK_1 ; 
 int /*<<< orphan*/  CP_SET_XFER_POINTER ; 
 int /*<<< orphan*/  CP_XFER_1 ; 
 int /*<<< orphan*/  DISABLE ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  INTR ; 
 int /*<<< orphan*/  LOAD ; 
 int /*<<< orphan*/  NEWCTX ; 
 int /*<<< orphan*/  NOT_PENDING ; 
 int /*<<< orphan*/  PENDING ; 
 int /*<<< orphan*/  RUNNING ; 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  SET ; 
 int /*<<< orphan*/  STATE ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  STOPPED ; 
 int /*<<< orphan*/  SWAP_DIRECTION ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UNK01 ; 
 int /*<<< orphan*/  UNK03 ; 
 int /*<<< orphan*/  UNK0B ; 
 int /*<<< orphan*/  UNK1D ; 
 int /*<<< orphan*/  UNK20 ; 
 int /*<<< orphan*/  USER_LOAD ; 
 int /*<<< orphan*/  USER_SAVE ; 
 int /*<<< orphan*/  XFER ; 
 int /*<<< orphan*/  XFER_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_grctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cp_check_load ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_grctx*,int,int) ; 
 int /*<<< orphan*/  cp_exit ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_grctx*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_grctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_grctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_grctx*,int) ; 
 int /*<<< orphan*/  cp_prepare_exit ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_grctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cp_setup_auto_load ; 
 int /*<<< orphan*/  cp_setup_load ; 
 int /*<<< orphan*/  cp_setup_save ; 
 int /*<<< orphan*/  cp_swap_state ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_grctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_grctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct nvkm_grctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct nvkm_grctx*) ; 

__attribute__((used)) static int
FUNC11(struct nvkm_grctx *ctx)
{
	FUNC6 (ctx, STATE, RUNNING);
	FUNC6 (ctx, XFER_SWITCH, ENABLE);
	/* decide whether we're loading/unloading the context */
	FUNC0 (ctx, AUTO_SAVE, PENDING, cp_setup_save);
	FUNC0 (ctx, USER_SAVE, PENDING, cp_setup_save);

	FUNC3(ctx, cp_check_load);
	FUNC0 (ctx, AUTO_LOAD, PENDING, cp_setup_auto_load);
	FUNC0 (ctx, USER_LOAD, PENDING, cp_setup_load);
	FUNC0 (ctx, ALWAYS, TRUE, cp_prepare_exit);

	/* setup for context load */
	FUNC3(ctx, cp_setup_auto_load);
	FUNC4 (ctx, CP_DISABLE1);
	FUNC4 (ctx, CP_DISABLE2);
	FUNC4 (ctx, CP_ENABLE);
	FUNC4 (ctx, CP_NEXT_TO_SWAP);
	FUNC6 (ctx, UNK01, SET);
	FUNC3(ctx, cp_setup_load);
	FUNC4 (ctx, CP_NEWCTX);
	FUNC7(ctx, NEWCTX, BUSY);
	FUNC6 (ctx, UNK1D, CLEAR);
	FUNC6 (ctx, SWAP_DIRECTION, LOAD);
	FUNC0 (ctx, UNK0B, SET, cp_prepare_exit);
	FUNC0 (ctx, ALWAYS, TRUE, cp_swap_state);

	/* setup for context save */
	FUNC3(ctx, cp_setup_save);
	FUNC6 (ctx, UNK1D, SET);
	FUNC7(ctx, STATUS, BUSY);
	FUNC7(ctx, INTR, PENDING);
	FUNC0 (ctx, STATUS, BUSY, cp_setup_save);
	FUNC6 (ctx, UNK01, SET);
	FUNC6 (ctx, SWAP_DIRECTION, SAVE);

	/* general PGRAPH state */
	FUNC3(ctx, cp_swap_state);
	FUNC6 (ctx, UNK03, SET);
	FUNC5 (ctx, 0x00004/4);
	FUNC1 (ctx, 0x400828, 1); /* needed. otherwise, flickering happens. */
	FUNC5 (ctx, 0x00100/4);
	FUNC8(ctx);
	FUNC9(ctx);
	FUNC10(ctx);

	FUNC0 (ctx, SWAP_DIRECTION, SAVE, cp_check_load);

	FUNC6 (ctx, UNK20, SET);
	FUNC6 (ctx, SWAP_DIRECTION, SAVE); /* no idea why this is needed, but fixes at least one lockup. */
	FUNC2 (ctx, ctx->ctxvals_base);
	FUNC4 (ctx, CP_SET_XFER_POINTER);
	FUNC2 (ctx, 4);
	FUNC4 (ctx, CP_SEEK_1);
	FUNC4 (ctx, CP_XFER_1);
	FUNC7(ctx, XFER, BUSY);

	/* pre-exit state updates */
	FUNC3(ctx, cp_prepare_exit);
	FUNC6 (ctx, UNK01, CLEAR);
	FUNC6 (ctx, UNK03, CLEAR);
	FUNC6 (ctx, UNK1D, CLEAR);

	FUNC0 (ctx, USER_SAVE, PENDING, cp_exit);
	FUNC4 (ctx, CP_NEXT_TO_CURRENT);

	FUNC3(ctx, cp_exit);
	FUNC6 (ctx, USER_SAVE, NOT_PENDING);
	FUNC6 (ctx, USER_LOAD, NOT_PENDING);
	FUNC6 (ctx, XFER_SWITCH, DISABLE);
	FUNC6 (ctx, STATE, STOPPED);
	FUNC4 (ctx, CP_END);
	ctx->ctxvals_pos += 0x400; /* padding... no idea why you need it */

	return 0;
}