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
struct TYPE_2__ {int /*<<< orphan*/  pwm; } ;
struct intel_panel {TYPE_1__ backlight; } ;
struct intel_connector {struct intel_panel panel; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(const struct drm_connector_state *old_conn_state)
{
	struct intel_connector *connector = FUNC2(old_conn_state->connector);
	struct intel_panel *panel = &connector->panel;

	/* Disable the backlight */
	FUNC0(old_conn_state, 0);
	FUNC3(2000, 3000);
	FUNC1(panel->backlight.pwm);
}