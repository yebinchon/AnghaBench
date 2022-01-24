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
typedef  int uint32_t ;
struct dmcu {int dummy; } ;
struct dce_dmcu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCI_MEM_PWR_STATUS ; 
 int /*<<< orphan*/  DMCU_IRAM_MEM_PWR_STATE ; 
 int /*<<< orphan*/  DMCU_IRAM_RD_CTRL ; 
 int /*<<< orphan*/  DMCU_IRAM_RD_DATA ; 
 int /*<<< orphan*/  DMCU_RAM_ACCESS_CTRL ; 
 int /*<<< orphan*/  IRAM_HOST_ACCESS_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct dce_dmcu* FUNC4 (struct dmcu*) ; 

__attribute__((used)) static void FUNC5(struct dmcu *dmcu, uint32_t *psr_state)
{
	struct dce_dmcu *dmcu_dce = FUNC4(dmcu);

	uint32_t psr_state_offset = 0xf0;

	/* Enable write access to IRAM */
	FUNC1(DMCU_RAM_ACCESS_CTRL, IRAM_HOST_ACCESS_EN, 1);

	FUNC2(DCI_MEM_PWR_STATUS, DMCU_IRAM_MEM_PWR_STATE, 0, 2, 10);

	/* Write address to IRAM_RD_ADDR in DMCU_IRAM_RD_CTRL */
	FUNC3(DMCU_IRAM_RD_CTRL, psr_state_offset);

	/* Read data from IRAM_RD_DATA in DMCU_IRAM_RD_DATA*/
	*psr_state = FUNC0(DMCU_IRAM_RD_DATA);

	/* Disable write access to IRAM after finished using IRAM
	 * in order to allow dynamic sleep state
	 */
	FUNC1(DMCU_RAM_ACCESS_CTRL, IRAM_HOST_ACCESS_EN, 0);
}