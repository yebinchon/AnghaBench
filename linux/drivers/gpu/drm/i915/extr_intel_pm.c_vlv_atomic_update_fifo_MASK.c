#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct vlv_fifo_state {int* plane; } ;
struct intel_uncore {int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {struct vlv_fifo_state fifo_state; } ;
struct TYPE_8__ {TYPE_3__ vlv; } ;
struct TYPE_5__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int /*<<< orphan*/  fifo_changed; TYPE_4__ wm; TYPE_1__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct intel_atomic_state {int dummy; } ;
struct drm_i915_private {struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSPARB ; 
 int /*<<< orphan*/  DSPARB2 ; 
 int /*<<< orphan*/  DSPARB3 ; 
#define  PIPE_A 130 
#define  PIPE_B 129 
#define  PIPE_C 128 
 size_t PLANE_CURSOR ; 
 size_t PLANE_PRIMARY ; 
 size_t PLANE_SPRITE0 ; 
 size_t PLANE_SPRITE1 ; 
 int /*<<< orphan*/  SPRITEA ; 
 int /*<<< orphan*/  SPRITEA_HI ; 
 int /*<<< orphan*/  SPRITEB ; 
 int /*<<< orphan*/  SPRITEB_HI ; 
 int /*<<< orphan*/  SPRITEC ; 
 int /*<<< orphan*/  SPRITEC_HI ; 
 int /*<<< orphan*/  SPRITED ; 
 int /*<<< orphan*/  SPRITED_HI ; 
 int /*<<< orphan*/  SPRITEE ; 
 int /*<<< orphan*/  SPRITEE_HI ; 
 int /*<<< orphan*/  SPRITEF ; 
 int /*<<< orphan*/  SPRITEF_HI ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_crtc*,int,int,int) ; 

__attribute__((used)) static void FUNC10(struct intel_atomic_state *state,
				   struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC8(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC7(crtc->base.dev);
	struct intel_uncore *uncore = &dev_priv->uncore;
	const struct vlv_fifo_state *fifo_state =
		&crtc_state->wm.vlv.fifo_state;
	int sprite0_start, sprite1_start, fifo_size;

	if (!crtc_state->fifo_changed)
		return;

	sprite0_start = fifo_state->plane[PLANE_PRIMARY];
	sprite1_start = fifo_state->plane[PLANE_SPRITE0] + sprite0_start;
	fifo_size = fifo_state->plane[PLANE_SPRITE1] + sprite1_start;

	FUNC1(fifo_state->plane[PLANE_CURSOR] != 63);
	FUNC1(fifo_size != 511);

	FUNC9(crtc, sprite0_start, sprite1_start, fifo_size);

	/*
	 * uncore.lock serves a double purpose here. It allows us to
	 * use the less expensive I915_{READ,WRITE}_FW() functions, and
	 * it protects the DSPARB registers from getting clobbered by
	 * parallel updates from multiple pipes.
	 *
	 * intel_pipe_update_start() has already disabled interrupts
	 * for us, so a plain spin_lock() is sufficient here.
	 */
	FUNC5(&uncore->lock);

	switch (crtc->pipe) {
		u32 dsparb, dsparb2, dsparb3;
	case PIPE_A:
		dsparb = FUNC3(uncore, DSPARB);
		dsparb2 = FUNC3(uncore, DSPARB2);

		dsparb &= ~(FUNC0(SPRITEA, 0xff) |
			    FUNC0(SPRITEB, 0xff));
		dsparb |= (FUNC0(SPRITEA, sprite0_start) |
			   FUNC0(SPRITEB, sprite1_start));

		dsparb2 &= ~(FUNC0(SPRITEA_HI, 0x1) |
			     FUNC0(SPRITEB_HI, 0x1));
		dsparb2 |= (FUNC0(SPRITEA_HI, sprite0_start >> 8) |
			   FUNC0(SPRITEB_HI, sprite1_start >> 8));

		FUNC4(uncore, DSPARB, dsparb);
		FUNC4(uncore, DSPARB2, dsparb2);
		break;
	case PIPE_B:
		dsparb = FUNC3(uncore, DSPARB);
		dsparb2 = FUNC3(uncore, DSPARB2);

		dsparb &= ~(FUNC0(SPRITEC, 0xff) |
			    FUNC0(SPRITED, 0xff));
		dsparb |= (FUNC0(SPRITEC, sprite0_start) |
			   FUNC0(SPRITED, sprite1_start));

		dsparb2 &= ~(FUNC0(SPRITEC_HI, 0xff) |
			     FUNC0(SPRITED_HI, 0xff));
		dsparb2 |= (FUNC0(SPRITEC_HI, sprite0_start >> 8) |
			   FUNC0(SPRITED_HI, sprite1_start >> 8));

		FUNC4(uncore, DSPARB, dsparb);
		FUNC4(uncore, DSPARB2, dsparb2);
		break;
	case PIPE_C:
		dsparb3 = FUNC3(uncore, DSPARB3);
		dsparb2 = FUNC3(uncore, DSPARB2);

		dsparb3 &= ~(FUNC0(SPRITEE, 0xff) |
			     FUNC0(SPRITEF, 0xff));
		dsparb3 |= (FUNC0(SPRITEE, sprite0_start) |
			    FUNC0(SPRITEF, sprite1_start));

		dsparb2 &= ~(FUNC0(SPRITEE_HI, 0xff) |
			     FUNC0(SPRITEF_HI, 0xff));
		dsparb2 |= (FUNC0(SPRITEE_HI, sprite0_start >> 8) |
			   FUNC0(SPRITEF_HI, sprite1_start >> 8));

		FUNC4(uncore, DSPARB3, dsparb3);
		FUNC4(uncore, DSPARB2, dsparb2);
		break;
	default:
		break;
	}

	FUNC2(uncore, DSPARB);

	FUNC6(&uncore->lock);
}