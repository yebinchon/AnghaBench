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
struct msm_dsi {struct drm_panel* panel; } ;
struct drm_panel {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_panel*,struct drm_connector*) ; 
 int FUNC1 (struct drm_panel*) ; 
 int FUNC2 (struct drm_connector*) ; 
 struct msm_dsi* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct drm_connector *connector)
{
	int id = FUNC2(connector);
	struct msm_dsi *msm_dsi = FUNC3(id);
	struct drm_panel *panel = msm_dsi->panel;
	int num;

	if (!panel)
		return 0;

	/*
	 * In dual DSI mode, we have one connector that can be
	 * attached to the drm_panel.
	 */
	FUNC0(panel, connector);
	num = FUNC1(panel);
	if (!num)
		return 0;

	return num;
}