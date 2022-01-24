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
struct radeon_connector_atom_dig {int /*<<< orphan*/  dpcd; } ;
struct radeon_connector {struct radeon_connector_atom_dig* con_priv; } ;
struct drm_display_mode {int clock; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int MODE_CLOCK_HIGH ; 
 int MODE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int FUNC1 (struct drm_connector*,int /*<<< orphan*/ ,int,unsigned int*,unsigned int*) ; 
 struct radeon_connector* FUNC2 (struct drm_connector*) ; 

int FUNC3(struct drm_connector *connector,
				struct drm_display_mode *mode)
{
	struct radeon_connector *radeon_connector = FUNC2(connector);
	struct radeon_connector_atom_dig *dig_connector;
	unsigned dp_clock, dp_lanes;
	int ret;

	if ((mode->clock > 340000) &&
	    (!FUNC0(connector)))
		return MODE_CLOCK_HIGH;

	if (!radeon_connector->con_priv)
		return MODE_CLOCK_HIGH;
	dig_connector = radeon_connector->con_priv;

	ret = FUNC1(connector, dig_connector->dpcd,
					   mode->clock,
					   &dp_lanes,
					   &dp_clock);
	if (ret)
		return MODE_CLOCK_HIGH;

	if ((dp_clock == 540000) &&
	    (!FUNC0(connector)))
		return MODE_CLOCK_HIGH;

	return MODE_OK;
}