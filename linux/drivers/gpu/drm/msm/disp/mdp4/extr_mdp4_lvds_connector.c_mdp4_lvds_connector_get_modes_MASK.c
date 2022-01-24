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
struct mdp4_lvds_connector {struct drm_panel* panel; } ;
struct drm_panel {TYPE_1__* funcs; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int (* get_modes ) (struct drm_panel*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_panel*,struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_panel*) ; 
 int FUNC2 (struct drm_panel*) ; 
 struct mdp4_lvds_connector* FUNC3 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC4(struct drm_connector *connector)
{
	struct mdp4_lvds_connector *mdp4_lvds_connector =
			FUNC3(connector);
	struct drm_panel *panel = mdp4_lvds_connector->panel;
	int ret = 0;

	if (panel) {
		FUNC0(panel, connector);

		ret = panel->funcs->get_modes(panel);

		FUNC1(panel);
	}

	return ret;
}