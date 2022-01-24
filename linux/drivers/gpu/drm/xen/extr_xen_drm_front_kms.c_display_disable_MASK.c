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
struct xen_drm_front_drm_pipeline {int conn_connected; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct drm_simple_display_pipe {TYPE_1__ crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct xen_drm_front_drm_pipeline*) ; 
 struct xen_drm_front_drm_pipeline* FUNC4 (struct drm_simple_display_pipe*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct xen_drm_front_drm_pipeline*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct drm_simple_display_pipe *pipe)
{
	struct xen_drm_front_drm_pipeline *pipeline =
			FUNC4(pipe);
	int ret = 0, idx;

	if (FUNC1(pipe->crtc.dev, &idx)) {
		ret = FUNC6(pipeline, 0, 0, 0, 0, 0,
					     FUNC5(NULL));
		FUNC2(idx);
	}
	if (ret)
		FUNC0("Failed to disable display: %d\n", ret);

	/* Make sure we can restart with enabled connector next time */
	pipeline->conn_connected = true;

	/* release stalled event if any */
	FUNC3(pipeline);
}