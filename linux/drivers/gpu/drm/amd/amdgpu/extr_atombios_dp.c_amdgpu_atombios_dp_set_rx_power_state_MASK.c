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
typedef  int /*<<< orphan*/  u8 ;
struct drm_connector {int dummy; } ;
struct amdgpu_connector_atom_dig {int* dpcd; } ;
struct amdgpu_connector {TYPE_1__* ddc_bus; struct amdgpu_connector_atom_dig* con_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_SET_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct amdgpu_connector* FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3(struct drm_connector *connector,
				    u8 power_state)
{
	struct amdgpu_connector *amdgpu_connector = FUNC1(connector);
	struct amdgpu_connector_atom_dig *dig_connector;

	if (!amdgpu_connector->con_priv)
		return;

	dig_connector = amdgpu_connector->con_priv;

	/* power up/down the sink */
	if (dig_connector->dpcd[0] >= 0x11) {
		FUNC0(&amdgpu_connector->ddc_bus->aux,
				   DP_SET_POWER, power_state);
		FUNC2(1000, 2000);
	}
}