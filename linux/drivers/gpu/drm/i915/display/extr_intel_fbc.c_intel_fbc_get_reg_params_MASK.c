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
struct TYPE_11__ {int /*<<< orphan*/  src_w; } ;
struct TYPE_10__ {int /*<<< orphan*/  stride; int /*<<< orphan*/  format; } ;
struct intel_fbc_state_cache {TYPE_5__ plane; TYPE_4__ fb; int /*<<< orphan*/  flags; int /*<<< orphan*/  vma; } ;
struct TYPE_9__ {int /*<<< orphan*/  stride; int /*<<< orphan*/  format; } ;
struct TYPE_8__ {int /*<<< orphan*/  fence_y_offset; int /*<<< orphan*/  i9xx_plane; int /*<<< orphan*/  pipe; } ;
struct intel_fbc_reg_params {int gen9_wa_cfb_stride; int /*<<< orphan*/  cfb_size; TYPE_3__ fb; TYPE_2__ crtc; int /*<<< orphan*/  flags; int /*<<< orphan*/  vma; } ;
struct intel_fbc {int threshold; struct intel_fbc_state_cache state_cache; } ;
struct TYPE_7__ {int /*<<< orphan*/  primary; int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_1__ base; int /*<<< orphan*/  pipe; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;
struct TYPE_12__ {int /*<<< orphan*/  i9xx_plane; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_fbc*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,struct intel_fbc_state_cache*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_fbc_reg_params*,int /*<<< orphan*/ ,int) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct intel_crtc *crtc,
				     struct intel_fbc_reg_params *params)
{
	struct drm_i915_private *dev_priv = FUNC6(crtc->base.dev);
	struct intel_fbc *fbc = &dev_priv->fbc;
	struct intel_fbc_state_cache *cache = &fbc->state_cache;

	/* Since all our fields are integer types, use memset here so the
	 * comparison function can rely on memcmp because the padding will be
	 * zero. */
	FUNC5(params, 0, sizeof(*params));

	params->vma = cache->vma;
	params->flags = cache->flags;

	params->crtc.pipe = crtc->pipe;
	params->crtc.i9xx_plane = FUNC7(crtc->base.primary)->i9xx_plane;
	params->crtc.fence_y_offset = FUNC3(fbc);

	params->fb.format = cache->fb.format;
	params->fb.stride = cache->fb.stride;

	params->cfb_size = FUNC4(dev_priv, cache);

	if (FUNC2(dev_priv, 9) && !FUNC1(dev_priv))
		params->gen9_wa_cfb_stride = FUNC0(cache->plane.src_w,
						32 * fbc->threshold) * 8;
}