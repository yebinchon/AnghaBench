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

/* Variables and functions */
 int /*<<< orphan*/  fw_cfg_dev_base ; 
 scalar_t__ fw_cfg_is_mmio ; 
 int /*<<< orphan*/  fw_cfg_p_base ; 
 int /*<<< orphan*/  fw_cfg_p_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	if (fw_cfg_is_mmio) {
		FUNC1(fw_cfg_dev_base);
		FUNC2(fw_cfg_p_base, fw_cfg_p_size);
	} else {
		FUNC0(fw_cfg_dev_base);
		FUNC3(fw_cfg_p_base, fw_cfg_p_size);
	}
}