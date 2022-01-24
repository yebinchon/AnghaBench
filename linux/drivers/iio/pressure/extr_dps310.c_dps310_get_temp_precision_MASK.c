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
struct dps310_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DPS310_TMP_CFG ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct dps310_data *data)
{
	int rc;
	int val;

	rc = FUNC2(data->regmap, DPS310_TMP_CFG, &val);
	if (rc < 0)
		return rc;

	/*
	 * Scale factor is bottom 4 bits of the register, but 1111 is
	 * reserved so just grab bottom three
	 */
	return FUNC0(val & FUNC1(2, 0));
}