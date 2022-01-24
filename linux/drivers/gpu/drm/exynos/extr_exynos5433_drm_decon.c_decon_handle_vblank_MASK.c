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
typedef  scalar_t__ u32 ;
struct decon_context {scalar_t__ frame_id; int /*<<< orphan*/  vblank_lock; TYPE_1__* crtc; } ;
typedef  scalar_t__ s32 ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct decon_context*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct decon_context *ctx)
{
	u32 frm;

	FUNC2(&ctx->vblank_lock);

	frm = FUNC0(ctx, true);

	if (frm != ctx->frame_id) {
		/* handle only if incremented, take care of wrap-around */
		if ((s32)(frm - ctx->frame_id) > 0)
			FUNC1(&ctx->crtc->base);
		ctx->frame_id = frm;
	}

	FUNC3(&ctx->vblank_lock);
}