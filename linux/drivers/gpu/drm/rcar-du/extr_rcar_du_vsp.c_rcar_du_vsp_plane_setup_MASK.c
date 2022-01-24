#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int left; int top; int width; int height; } ;
struct TYPE_12__ {int left; int top; int width; int height; } ;
struct vsp1_du_atomic_config {int alpha; int /*<<< orphan*/  pixelformat; scalar_t__* mem; TYPE_3__ dst; TYPE_2__ src; int /*<<< orphan*/  zpos; int /*<<< orphan*/  pitch; } ;
struct TYPE_19__ {int x1; int y1; } ;
struct TYPE_14__ {int alpha; TYPE_9__ dst; TYPE_9__ src; int /*<<< orphan*/  zpos; int /*<<< orphan*/  crtc; } ;
struct rcar_du_vsp_plane_state {TYPE_6__* format; TYPE_5__* sg_tables; TYPE_4__ state; } ;
struct TYPE_11__ {TYPE_8__* state; } ;
struct rcar_du_vsp_plane {int /*<<< orphan*/  index; TYPE_7__* vsp; TYPE_1__ plane; } ;
struct rcar_du_format_info {int /*<<< orphan*/  v4l2; } ;
struct rcar_du_crtc {int /*<<< orphan*/  vsp_pipe; } ;
struct drm_framebuffer {scalar_t__* offsets; int /*<<< orphan*/ * pitches; } ;
struct TYPE_18__ {struct drm_framebuffer* fb; } ;
struct TYPE_17__ {int /*<<< orphan*/  vsp; } ;
struct TYPE_16__ {unsigned int planes; int /*<<< orphan*/  fourcc; } ;
struct TYPE_15__ {int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int FUNC0 (TYPE_9__*) ; 
 int FUNC1 (TYPE_9__*) ; 
 struct rcar_du_format_info* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct rcar_du_crtc* FUNC4 (int /*<<< orphan*/ ) ; 
 struct rcar_du_vsp_plane_state* FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vsp1_du_atomic_config*) ; 

__attribute__((used)) static void FUNC7(struct rcar_du_vsp_plane *plane)
{
	struct rcar_du_vsp_plane_state *state =
		FUNC5(plane->plane.state);
	struct rcar_du_crtc *crtc = FUNC4(state->state.crtc);
	struct drm_framebuffer *fb = plane->plane.state->fb;
	const struct rcar_du_format_info *format;
	struct vsp1_du_atomic_config cfg = {
		.pixelformat = 0,
		.pitch = fb->pitches[0],
		.alpha = state->state.alpha >> 8,
		.zpos = state->state.zpos,
	};
	unsigned int i;

	cfg.src.left = state->state.src.x1 >> 16;
	cfg.src.top = state->state.src.y1 >> 16;
	cfg.src.width = FUNC1(&state->state.src) >> 16;
	cfg.src.height = FUNC0(&state->state.src) >> 16;

	cfg.dst.left = state->state.dst.x1;
	cfg.dst.top = state->state.dst.y1;
	cfg.dst.width = FUNC1(&state->state.dst);
	cfg.dst.height = FUNC0(&state->state.dst);

	for (i = 0; i < state->format->planes; ++i)
		cfg.mem[i] = FUNC3(state->sg_tables[i].sgl)
			   + fb->offsets[i];

	format = FUNC2(state->format->fourcc);
	cfg.pixelformat = format->v4l2;

	FUNC6(plane->vsp->vsp, crtc->vsp_pipe,
			      plane->index, &cfg);
}