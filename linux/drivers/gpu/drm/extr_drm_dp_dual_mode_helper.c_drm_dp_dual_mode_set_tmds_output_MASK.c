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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  tmds_oen ;
struct i2c_adapter {int dummy; } ;
typedef  int ssize_t ;
typedef  enum drm_dp_dual_mode_type { ____Placeholder_drm_dp_dual_mode_type } drm_dp_dual_mode_type ;

/* Variables and functions */
 scalar_t__ DP_DUAL_MODE_TMDS_DISABLE ; 
 int /*<<< orphan*/  DP_DUAL_MODE_TMDS_OEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int DRM_DP_DUAL_MODE_TYPE2_DVI ; 
 int EIO ; 
 int FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ,scalar_t__*,int) ; 

int FUNC3(enum drm_dp_dual_mode_type type,
				     struct i2c_adapter *adapter, bool enable)
{
	uint8_t tmds_oen = enable ? 0 : DP_DUAL_MODE_TMDS_DISABLE;
	ssize_t ret;
	int retry;

	if (type < DRM_DP_DUAL_MODE_TYPE2_DVI)
		return 0;

	/*
	 * LSPCON adapters in low-power state may ignore the first write, so
	 * read back and verify the written value a few times.
	 */
	for (retry = 0; retry < 3; retry++) {
		uint8_t tmp;

		ret = FUNC2(adapter, DP_DUAL_MODE_TMDS_OEN,
					     &tmds_oen, sizeof(tmds_oen));
		if (ret) {
			FUNC0("Failed to %s TMDS output buffers (%d attempts)\n",
				      enable ? "enable" : "disable",
				      retry + 1);
			return ret;
		}

		ret = FUNC1(adapter, DP_DUAL_MODE_TMDS_OEN,
					    &tmp, sizeof(tmp));
		if (ret) {
			FUNC0("I2C read failed during TMDS output buffer %s (%d attempts)\n",
				      enable ? "enabling" : "disabling",
				      retry + 1);
			return ret;
		}

		if (tmp == tmds_oen)
			return 0;
	}

	FUNC0("I2C write value mismatch during TMDS output buffer %s\n",
		      enable ? "enabling" : "disabling");

	return -EIO;
}