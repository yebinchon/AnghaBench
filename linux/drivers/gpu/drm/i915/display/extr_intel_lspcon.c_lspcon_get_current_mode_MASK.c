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
struct intel_lspcon {int dummy; } ;
struct i2c_adapter {int dummy; } ;
typedef  enum drm_lspcon_mode { ____Placeholder_drm_lspcon_mode } drm_lspcon_mode ;
struct TYPE_3__ {struct i2c_adapter ddc; } ;
struct TYPE_4__ {TYPE_1__ aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DRM_LSPCON_MODE_INVALID ; 
 scalar_t__ FUNC1 (struct i2c_adapter*,int*) ; 
 TYPE_2__* FUNC2 (struct intel_lspcon*) ; 

__attribute__((used)) static enum drm_lspcon_mode FUNC3(struct intel_lspcon *lspcon)
{
	enum drm_lspcon_mode current_mode;
	struct i2c_adapter *adapter = &FUNC2(lspcon)->aux.ddc;

	if (FUNC1(adapter, &current_mode)) {
		FUNC0("Error reading LSPCON mode\n");
		return DRM_LSPCON_MODE_INVALID;
	}
	return current_mode;
}