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
struct drm_display_mode {int dummy; } ;
struct TYPE_3__ {size_t mode; } ;
struct drm_connector_state {TYPE_1__ tv; } ;
struct drm_connector {int /*<<< orphan*/  dev; struct drm_connector_state* state; } ;
struct TYPE_4__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 struct drm_display_mode* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_display_mode*) ; 
 TYPE_2__* vc4_vec_tv_modes ; 

__attribute__((used)) static int FUNC3(struct drm_connector *connector)
{
	struct drm_connector_state *state = connector->state;
	struct drm_display_mode *mode;

	mode = FUNC1(connector->dev,
				  vc4_vec_tv_modes[state->tv.mode].mode);
	if (!mode) {
		FUNC0("Failed to create a new display mode\n");
		return -ENOMEM;
	}

	FUNC2(connector, mode);

	return 1;
}