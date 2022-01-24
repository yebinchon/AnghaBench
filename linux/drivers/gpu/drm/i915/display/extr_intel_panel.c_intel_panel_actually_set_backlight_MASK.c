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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  (* set ) (struct drm_connector_state const*,int /*<<< orphan*/ ) ;} ;
struct intel_panel {TYPE_1__ backlight; } ;
struct intel_connector {struct intel_panel panel; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector_state const*,int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(const struct drm_connector_state *conn_state, u32 level)
{
	struct intel_connector *connector = FUNC3(conn_state->connector);
	struct intel_panel *panel = &connector->panel;

	FUNC0("set backlight PWM = %d\n", level);

	level = FUNC1(connector, level);
	panel->backlight.set(conn_state, level);
}