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
struct intel_lspcon {int mode; } ;
struct i2c_adapter {int dummy; } ;
typedef  enum drm_lspcon_mode { ____Placeholder_drm_lspcon_mode } drm_lspcon_mode ;
struct TYPE_3__ {struct i2c_adapter ddc; } ;
struct TYPE_4__ {TYPE_1__ aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct i2c_adapter*,int*) ; 
 int FUNC3 (struct i2c_adapter*,int) ; 
 TYPE_2__* FUNC4 (struct intel_lspcon*) ; 

__attribute__((used)) static int FUNC5(struct intel_lspcon *lspcon,
			      enum drm_lspcon_mode mode)
{
	int err;
	enum drm_lspcon_mode current_mode;
	struct i2c_adapter *adapter = &FUNC4(lspcon)->aux.ddc;

	err = FUNC2(adapter, &current_mode);
	if (err) {
		FUNC1("Error reading LSPCON mode\n");
		return err;
	}

	if (current_mode == mode) {
		FUNC0("Current mode = desired LSPCON mode\n");
		return 0;
	}

	err = FUNC3(adapter, mode);
	if (err < 0) {
		FUNC1("LSPCON mode change failed\n");
		return err;
	}

	lspcon->mode = mode;
	FUNC0("LSPCON mode changed done\n");
	return 0;
}