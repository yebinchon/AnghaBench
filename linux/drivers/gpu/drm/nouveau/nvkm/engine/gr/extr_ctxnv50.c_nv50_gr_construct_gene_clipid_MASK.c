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
struct nvkm_grctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_grctx*,int,int) ; 

__attribute__((used)) static void
FUNC1(struct nvkm_grctx *ctx)
{
	/* middle of strand 0 on pre-NVA0 [after 24xx], middle of area 6 on NVAx */
	/* SEEK */
	FUNC0(ctx, 1, 0);		/* 00000007 UNK0FB4 */
	/* SEEK */
	FUNC0(ctx, 4, 0);		/* 07ffffff CLIPID_REGION_HORIZ */
	FUNC0(ctx, 4, 0);		/* 07ffffff CLIPID_REGION_VERT */
	FUNC0(ctx, 2, 0);		/* 07ffffff SCREEN_SCISSOR */
	FUNC0(ctx, 2, 0x04000000);	/* 07ffffff UNK1508 */
	FUNC0(ctx, 1, 0);		/* 00000001 CLIPID_ENABLE */
	FUNC0(ctx, 1, 0x80);		/* 00003fff CLIPID_WIDTH */
	FUNC0(ctx, 1, 0);		/* 000000ff CLIPID_ID */
	FUNC0(ctx, 1, 0);		/* 000000ff CLIPID_ADDRESS_HIGH */
	FUNC0(ctx, 1, 0);		/* ffffffff CLIPID_ADDRESS_LOW */
	FUNC0(ctx, 1, 0x80);		/* 00003fff CLIPID_HEIGHT */
	FUNC0(ctx, 1, 0);		/* 0000ffff DMA_CLIPID */
}