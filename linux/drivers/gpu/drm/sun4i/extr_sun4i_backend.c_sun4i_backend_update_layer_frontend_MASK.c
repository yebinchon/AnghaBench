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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  regs; } ;
struct sun4i_backend {TYPE_1__ engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SUN4I_BACKEND_ATTCTL_REG0_LAY_VDOEN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SUN4I_BACKEND_ATTCTL_REG1_LAY_FBFMT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct sun4i_backend *backend,
					int layer, uint32_t fmt)
{
	u32 val;
	int ret;

	ret = FUNC4(fmt, &val);
	if (ret) {
		FUNC0("Invalid format\n");
		return ret;
	}

	FUNC3(backend->engine.regs,
			   FUNC1(layer),
			   SUN4I_BACKEND_ATTCTL_REG0_LAY_VDOEN,
			   SUN4I_BACKEND_ATTCTL_REG0_LAY_VDOEN);

	FUNC3(backend->engine.regs,
			   FUNC2(layer),
			   SUN4I_BACKEND_ATTCTL_REG1_LAY_FBFMT, val);

	return 0;
}