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
typedef  int u32 ;
struct tegra_dpaux {int dummy; } ;
struct drm_dp_aux {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  DPAUX_DP_AUXSTAT ; 
 int DPAUX_DP_AUXSTAT_HPD_STATUS ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int FUNC0 (struct tegra_dpaux*,int /*<<< orphan*/ ) ; 
 struct tegra_dpaux* FUNC1 (struct drm_dp_aux*) ; 

enum drm_connector_status FUNC2(struct drm_dp_aux *aux)
{
	struct tegra_dpaux *dpaux = FUNC1(aux);
	u32 value;

	value = FUNC0(dpaux, DPAUX_DP_AUXSTAT);

	if (value & DPAUX_DP_AUXSTAT_HPD_STATUS)
		return connector_status_connected;

	return connector_status_disconnected;
}