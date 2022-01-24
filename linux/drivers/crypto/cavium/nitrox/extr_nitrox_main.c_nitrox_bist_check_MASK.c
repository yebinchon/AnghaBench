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
typedef  scalar_t__ u64 ;
struct nitrox_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMI_BIST_REG ; 
 int /*<<< orphan*/  BMO_BIST_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EFL_TOP_BIST_STAT ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LBC_BIST_STATUS ; 
 int /*<<< orphan*/  NPS_CORE_BIST_REG ; 
 int /*<<< orphan*/  NPS_CORE_NPC_BIST_REG ; 
 int /*<<< orphan*/  NPS_PKT_IN_BIST_REG ; 
 int /*<<< orphan*/  NPS_PKT_SLC_BIST_REG ; 
 int NR_CLUSTERS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POM_BIST_REG ; 
 int /*<<< orphan*/  UCD_BIST_STATUS ; 
 scalar_t__ FUNC3 (struct nitrox_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nitrox_device *ndev)
{
	u64 value = 0;
	int i;

	for (i = 0; i < NR_CLUSTERS; i++) {
		value += FUNC3(ndev, FUNC1(i));
		value += FUNC3(ndev, FUNC0(i));
	}
	value += FUNC3(ndev, UCD_BIST_STATUS);
	value += FUNC3(ndev, NPS_CORE_BIST_REG);
	value += FUNC3(ndev, NPS_CORE_NPC_BIST_REG);
	value += FUNC3(ndev, NPS_PKT_SLC_BIST_REG);
	value += FUNC3(ndev, NPS_PKT_IN_BIST_REG);
	value += FUNC3(ndev, POM_BIST_REG);
	value += FUNC3(ndev, BMI_BIST_REG);
	value += FUNC3(ndev, EFL_TOP_BIST_STAT);
	value += FUNC3(ndev, BMO_BIST_REG);
	value += FUNC3(ndev, LBC_BIST_STATUS);
	value += FUNC3(ndev, FUNC2(0));
	if (value)
		return -EIO;
	return 0;
}