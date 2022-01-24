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
struct da9052_tsi {int /*<<< orphan*/  da9052; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_ADC_CONT_REG ; 
 int /*<<< orphan*/  DA9052_LDO9_REG ; 
 int /*<<< orphan*/  DA9052_TSI_CONT_A_REG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct da9052_tsi *tsi)
{
	int error;

	error = FUNC2(tsi->da9052);
	if (error)
		return error;

	/* Measure TSI sample every 1ms */
	error = FUNC0(tsi->da9052, DA9052_ADC_CONT_REG,
				  1 << 6, 1 << 6);
	if (error < 0)
		return error;

	/* TSI_DELAY: 3 slots, TSI_SKIP: 0 slots, TSI_MODE: XYZP */
	error = FUNC0(tsi->da9052, DA9052_TSI_CONT_A_REG, 0xFC, 0xC0);
	if (error < 0)
		return error;

	/* Supply TSIRef through LD09 */
	error = FUNC1(tsi->da9052, DA9052_LDO9_REG, 0x59);
	if (error < 0)
		return error;

	return 0;
}