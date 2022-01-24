#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct radeon_device {int dummy; } ;
struct radeon_connector_atom_dig {int* dpcd; int is_mst; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct radeon_connector {int /*<<< orphan*/  mst_mgr; TYPE_2__* ddc_bus; TYPE_1__ base; struct radeon_connector_atom_dig* con_priv; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_4__ {int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 size_t DP_DPCD_REV ; 
 int /*<<< orphan*/  DP_MSTM_CAP ; 
 int DP_MST_CAP ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  radeon_mst ; 

int
FUNC4(struct radeon_connector *radeon_connector)
{
	struct radeon_connector_atom_dig *dig_connector = radeon_connector->con_priv;
	struct drm_device *dev = radeon_connector->base.dev;
	struct radeon_device *rdev = dev->dev_private;
	int ret;
	u8 msg[1];

	if (!radeon_mst)
		return 0;

	if (!FUNC0(rdev))
		return 0;

	if (dig_connector->dpcd[DP_DPCD_REV] < 0x12)
		return 0;

	ret = FUNC2(&radeon_connector->ddc_bus->aux, DP_MSTM_CAP, msg,
			       1);
	if (ret) {
		if (msg[0] & DP_MST_CAP) {
			FUNC1("Sink is MST capable\n");
			dig_connector->is_mst = true;
		} else {
			FUNC1("Sink is not MST capable\n");
			dig_connector->is_mst = false;
		}

	}
	FUNC3(&radeon_connector->mst_mgr,
					dig_connector->is_mst);
	return dig_connector->is_mst;
}