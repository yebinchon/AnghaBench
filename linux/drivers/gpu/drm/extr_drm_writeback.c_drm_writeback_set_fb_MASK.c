#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_framebuffer {int dummy; } ;
struct drm_connector_state {TYPE_1__* writeback_job; TYPE_2__* connector; } ;
struct TYPE_4__ {scalar_t__ connector_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  fb; int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 scalar_t__ DRM_MODE_CONNECTOR_WRITEBACK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct drm_framebuffer*) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ) ; 

int FUNC4(struct drm_connector_state *conn_state,
			 struct drm_framebuffer *fb)
{
	FUNC0(conn_state->connector->connector_type != DRM_MODE_CONNECTOR_WRITEBACK);

	if (!conn_state->writeback_job) {
		conn_state->writeback_job =
			FUNC3(sizeof(*conn_state->writeback_job), GFP_KERNEL);
		if (!conn_state->writeback_job)
			return -ENOMEM;

		conn_state->writeback_job->connector =
			FUNC1(conn_state->connector);
	}

	FUNC2(&conn_state->writeback_job->fb, fb);
	return 0;
}