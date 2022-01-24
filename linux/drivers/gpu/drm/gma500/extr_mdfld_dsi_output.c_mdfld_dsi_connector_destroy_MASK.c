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
struct mdfld_dsi_pkg_sender {int dummy; } ;
struct mdfld_dsi_connector {struct mdfld_dsi_pkg_sender* pkg_sender; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct mdfld_dsi_connector*) ; 
 struct mdfld_dsi_connector* FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct mdfld_dsi_pkg_sender*) ; 

__attribute__((used)) static void FUNC5(struct drm_connector *connector)
{
	struct mdfld_dsi_connector *dsi_connector =
					FUNC3(connector);
	struct mdfld_dsi_pkg_sender *sender;

	if (!dsi_connector)
		return;
	FUNC1(connector);
	FUNC0(connector);
	sender = dsi_connector->pkg_sender;
	FUNC4(sender);
	FUNC2(dsi_connector);
}