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
struct tv_mode {int /*<<< orphan*/  component_only; int /*<<< orphan*/  progressive; } ;
struct input_res {int w; scalar_t__ h; } ;
struct drm_i915_private {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  dev; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int FUNC0 (struct input_res*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int) ; 
 struct drm_display_mode* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_display_mode*) ; 
 struct input_res* input_res_table ; 
 struct tv_mode* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_display_mode*,struct tv_mode const*) ; 
 scalar_t__ FUNC9 (struct tv_mode const*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_display_mode*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_display_mode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_display_mode*,struct tv_mode const*) ; 
 struct drm_i915_private* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct drm_connector *connector)
{
	struct drm_i915_private *dev_priv = FUNC13(connector->dev);
	const struct tv_mode *tv_mode = FUNC7(connector->state);
	int i, count = 0;

	for (i = 0; i < FUNC0(input_res_table); i++) {
		const struct input_res *input = &input_res_table[i];
		struct drm_display_mode *mode;

		if (input->w > 1024 &&
		    !tv_mode->progressive &&
		    !tv_mode->component_only)
			continue;

		/* no vertical scaling with wide sources on gen3 */
		if (FUNC2(dev_priv, 3) && input->w > 1024 &&
		    input->h > FUNC9(tv_mode))
			continue;

		mode = FUNC3(connector->dev);
		if (!mode)
			continue;

		/*
		 * We take the TV mode and scale it to look
		 * like it had the expected h/vdisplay. This
		 * provides the most information to userspace
		 * about the actual timings of the mode. We
		 * do ignore the margins though.
		 */
		FUNC8(mode, tv_mode);
		if (count == 0) {
			FUNC1("TV mode:\n");
			FUNC4(mode);
		}
		FUNC10(mode, input->w, 0, 0);
		FUNC11(mode, input->h, 0, 0);
		FUNC12(mode, tv_mode);

		FUNC6(mode);

		FUNC5(connector, mode);
		count++;
	}

	return count;
}