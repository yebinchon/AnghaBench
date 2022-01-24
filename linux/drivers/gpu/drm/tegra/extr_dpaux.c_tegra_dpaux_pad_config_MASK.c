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

/* Variables and functions */
 int /*<<< orphan*/  DPAUX_HYBRID_PADCTL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int DPAUX_HYBRID_PADCTL_AUX_INPUT_RCV ; 
 int DPAUX_HYBRID_PADCTL_I2C_SCL_INPUT_RCV ; 
 int DPAUX_HYBRID_PADCTL_I2C_SDA_INPUT_RCV ; 
 int DPAUX_HYBRID_PADCTL_MODE_AUX ; 
 int DPAUX_HYBRID_PADCTL_MODE_I2C ; 
#define  DPAUX_PADCTL_FUNC_AUX 130 
#define  DPAUX_PADCTL_FUNC_I2C 129 
#define  DPAUX_PADCTL_FUNC_OFF 128 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_dpaux*) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_dpaux*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_dpaux*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct tegra_dpaux *dpaux, unsigned function)
{
	u32 value;

	switch (function) {
	case DPAUX_PADCTL_FUNC_AUX:
		value = FUNC0(2) |
			FUNC2(4) |
			FUNC1(0x18) |
			DPAUX_HYBRID_PADCTL_AUX_INPUT_RCV |
			DPAUX_HYBRID_PADCTL_MODE_AUX;
		break;

	case DPAUX_PADCTL_FUNC_I2C:
		value = DPAUX_HYBRID_PADCTL_I2C_SDA_INPUT_RCV |
			DPAUX_HYBRID_PADCTL_I2C_SCL_INPUT_RCV |
			FUNC0(2) |
			FUNC2(4) |
			FUNC1(0x18) |
			DPAUX_HYBRID_PADCTL_MODE_I2C;
		break;

	case DPAUX_PADCTL_FUNC_OFF:
		FUNC3(dpaux);
		return 0;

	default:
		return -ENOTSUPP;
	}

	FUNC5(dpaux, value, DPAUX_HYBRID_PADCTL);
	FUNC4(dpaux);

	return 0;
}