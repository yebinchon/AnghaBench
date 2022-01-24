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
struct exynos_mic {int /*<<< orphan*/  dev; int /*<<< orphan*/  sysreg; scalar_t__ i80_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DSD_CFG_MUX ; 
 unsigned int MIC0_I80_MUX ; 
 unsigned int MIC0_ON_MUX ; 
 unsigned int MIC0_RGB_MUX ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct exynos_mic *mic, bool enable)
{
	int ret;
	unsigned int val;

	ret = FUNC1(mic->sysreg, DSD_CFG_MUX, &val);
	if (ret) {
		FUNC0(mic->dev,
			      "mic: Failed to read system register\n");
		return;
	}

	if (enable) {
		if (mic->i80_mode)
			val |= MIC0_I80_MUX;
		else
			val |= MIC0_RGB_MUX;

		val |=  MIC0_ON_MUX;
	} else
		val &= ~(MIC0_RGB_MUX | MIC0_I80_MUX | MIC0_ON_MUX);

	ret = FUNC2(mic->sysreg, DSD_CFG_MUX, val);
	if (ret)
		FUNC0(mic->dev,
			      "mic: Failed to read system register\n");
}