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
struct ad5758_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5758_DCDC_CONFIG2 ; 
 int /*<<< orphan*/  AD5758_DCDC_CONFIG2_BUSY_3WI_MSK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  AD5758_DCDC_CONFIG2_ILIMIT_MSK ; 
 int FUNC1 (struct ad5758_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ad5758_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ad5758_state *st, unsigned int ilim)
{
	int ret;

	ret = FUNC1(st, AD5758_DCDC_CONFIG2,
				    AD5758_DCDC_CONFIG2_ILIMIT_MSK,
				    FUNC0(ilim));
	if (ret < 0)
		return ret;
	/*
	 * Poll the BUSY_3WI bit in the DCDC_CONFIG2 register until it is 0.
	 * This allows the 3-wire interface communication to complete.
	 */
	return FUNC2(st, AD5758_DCDC_CONFIG2,
					     AD5758_DCDC_CONFIG2_BUSY_3WI_MSK);
}