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
struct intel_encoder {int dummy; } ;
struct intel_connector {int dummy; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
typedef  enum intel_hotplug_state { ____Placeholder_intel_hotplug_state } intel_hotplug_state ;

/* Variables and functions */
 int EDEADLK ; 
 int INTEL_HOTPLUG_RETRY ; 
 int INTEL_HOTPLUG_UNCHANGED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_modeset_acquire_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_modeset_acquire_ctx*) ; 
 int FUNC5 (struct intel_encoder*,struct drm_modeset_acquire_ctx*) ; 
 int FUNC6 (struct intel_encoder*,struct intel_connector*,int) ; 

__attribute__((used)) static enum intel_hotplug_state
FUNC7(struct intel_encoder *encoder,
		 struct intel_connector *connector,
		 bool irq_received)
{
	struct drm_modeset_acquire_ctx ctx;
	enum intel_hotplug_state state;
	int ret;

	state = FUNC6(encoder, connector, irq_received);

	FUNC2(&ctx, 0);

	for (;;) {
		ret = FUNC5(encoder, &ctx);

		if (ret == -EDEADLK) {
			FUNC3(&ctx);
			continue;
		}

		break;
	}

	FUNC4(&ctx);
	FUNC1(&ctx);
	FUNC0(ret, "Acquiring modeset locks failed with %i\n", ret);

	/*
	 * Keeping it consistent with intel_ddi_hotplug() and
	 * intel_hdmi_hotplug().
	 */
	if (state == INTEL_HOTPLUG_UNCHANGED && irq_received)
		state = INTEL_HOTPLUG_RETRY;

	return state;
}