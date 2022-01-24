#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mixer_context {TYPE_3__* crtc; } ;
struct drm_display_mode {int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct TYPE_5__ {TYPE_1__* state; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct TYPE_4__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mixer_context*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC1 (struct mixer_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mixer_context*) ; 

__attribute__((used)) static void FUNC3(struct mixer_context *ctx)
{
	struct drm_display_mode *mode = &ctx->crtc->base.state->adjusted_mode;

	FUNC1(ctx, mode->hdisplay, mode->vdisplay);
	FUNC0(ctx, mode);
	FUNC2(ctx);
}