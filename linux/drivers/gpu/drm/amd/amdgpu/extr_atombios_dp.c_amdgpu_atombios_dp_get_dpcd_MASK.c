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
struct amdgpu_connector_atom_dig {scalar_t__* dpcd; } ;
struct amdgpu_connector {TYPE_1__* ddc_bus; struct amdgpu_connector_atom_dig* con_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_DPCD_REV ; 
 int DP_DPCD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_connector*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,int) ; 

int FUNC4(struct amdgpu_connector *amdgpu_connector)
{
	struct amdgpu_connector_atom_dig *dig_connector = amdgpu_connector->con_priv;
	u8 msg[DP_DPCD_SIZE];
	int ret;

	ret = FUNC2(&amdgpu_connector->ddc_bus->aux, DP_DPCD_REV,
			       msg, DP_DPCD_SIZE);
	if (ret == DP_DPCD_SIZE) {
		FUNC3(dig_connector->dpcd, msg, DP_DPCD_SIZE);

		FUNC0("DPCD: %*ph\n", (int)sizeof(dig_connector->dpcd),
			      dig_connector->dpcd);

		FUNC1(amdgpu_connector);

		return 0;
	}

	dig_connector->dpcd[0] = 0;
	return -EINVAL;
}