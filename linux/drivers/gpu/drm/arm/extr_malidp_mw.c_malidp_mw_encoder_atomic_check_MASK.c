#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct malidp_mw_connector_state {scalar_t__ format; int* pitches; int n_planes; int /*<<< orphan*/  rgb2yuv_coeffs; scalar_t__* addrs; } ;
struct malidp_drm {TYPE_6__* dev; } ;
struct drm_gem_cma_object {scalar_t__ paddr; } ;
struct drm_framebuffer {scalar_t__ width; scalar_t__ height; int* pitches; TYPE_5__* format; scalar_t__* offsets; scalar_t__ modifier; } ;
struct drm_format_name_buf {int dummy; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct TYPE_9__ {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct drm_crtc_state {TYPE_3__ mode; } ;
struct drm_connector_state {TYPE_2__* writeback_job; } ;
struct TYPE_12__ {TYPE_4__* hw; } ;
struct TYPE_11__ {int num_planes; scalar_t__ is_yuv; int /*<<< orphan*/  format; } ;
struct TYPE_10__ {int /*<<< orphan*/  map; } ;
struct TYPE_8__ {struct drm_framebuffer* fb; } ;
struct TYPE_7__ {struct malidp_drm* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 scalar_t__ MALIDP_INVALID_FORMAT_ID ; 
 int /*<<< orphan*/  SE_MEMWRITE ; 
 struct drm_gem_cma_object* FUNC1 (struct drm_framebuffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct drm_format_name_buf*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rgb2yuv_coeffs_bt709_limited ; 
 struct malidp_mw_connector_state* FUNC5 (struct drm_connector_state*) ; 

__attribute__((used)) static int
FUNC6(struct drm_encoder *encoder,
			       struct drm_crtc_state *crtc_state,
			       struct drm_connector_state *conn_state)
{
	struct malidp_mw_connector_state *mw_state = FUNC5(conn_state);
	struct malidp_drm *malidp = encoder->dev->dev_private;
	struct drm_framebuffer *fb;
	int i, n_planes;

	if (!conn_state->writeback_job)
		return 0;

	fb = conn_state->writeback_job->fb;
	if ((fb->width != crtc_state->mode.hdisplay) ||
	    (fb->height != crtc_state->mode.vdisplay)) {
		FUNC0("Invalid framebuffer size %ux%u\n",
				fb->width, fb->height);
		return -EINVAL;
	}

	if (fb->modifier) {
		FUNC0("Writeback framebuffer does not support modifiers\n");
		return -EINVAL;
	}

	mw_state->format =
		FUNC3(&malidp->dev->hw->map, SE_MEMWRITE,
					fb->format->format, !!fb->modifier);
	if (mw_state->format == MALIDP_INVALID_FORMAT_ID) {
		struct drm_format_name_buf format_name;

		FUNC0("Invalid pixel format %s\n",
			      FUNC2(fb->format->format,
						  &format_name));
		return -EINVAL;
	}

	n_planes = fb->format->num_planes;
	for (i = 0; i < n_planes; i++) {
		struct drm_gem_cma_object *obj = FUNC1(fb, i);
		/* memory write buffers are never rotated */
		u8 alignment = FUNC4(malidp->dev, 0);

		if (fb->pitches[i] & (alignment - 1)) {
			FUNC0("Invalid pitch %u for plane %d\n",
				      fb->pitches[i], i);
			return -EINVAL;
		}
		mw_state->pitches[i] = fb->pitches[i];
		mw_state->addrs[i] = obj->paddr + fb->offsets[i];
	}
	mw_state->n_planes = n_planes;

	if (fb->format->is_yuv)
		mw_state->rgb2yuv_coeffs = rgb2yuv_coeffs_bt709_limited;

	return 0;
}