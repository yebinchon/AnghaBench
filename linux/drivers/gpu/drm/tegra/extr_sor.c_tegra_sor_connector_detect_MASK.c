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
struct tegra_sor {scalar_t__ aux; } ;
struct tegra_output {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 struct tegra_output* FUNC0 (struct drm_connector*) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (struct drm_connector*,int) ; 
 struct tegra_sor* FUNC3 (struct tegra_output*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC4(struct drm_connector *connector, bool force)
{
	struct tegra_output *output = FUNC0(connector);
	struct tegra_sor *sor = FUNC3(output);

	if (sor->aux)
		return FUNC1(sor->aux);

	return FUNC2(connector, force);
}