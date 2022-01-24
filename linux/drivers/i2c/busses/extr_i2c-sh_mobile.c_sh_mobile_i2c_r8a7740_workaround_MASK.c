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
struct sh_mobile_i2c_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICCR ; 
 int /*<<< orphan*/  ICCR_ICE ; 
 int /*<<< orphan*/  ICCR_SCP ; 
 int /*<<< orphan*/  ICCR_TRS ; 
 int /*<<< orphan*/  ICSTART ; 
 int /*<<< orphan*/  ICSTART_ICSTART ; 
 int /*<<< orphan*/  FUNC0 (struct sh_mobile_i2c_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mobile_i2c_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_mobile_i2c_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct sh_mobile_i2c_data *pd)
{
	FUNC1(pd, ICCR, ICCR_ICE, 0);
	FUNC0(pd, ICCR); /* dummy read */

	FUNC1(pd, ICSTART, ICSTART_ICSTART, 0);
	FUNC0(pd, ICSTART); /* dummy read */

	FUNC4(10);

	FUNC2(pd, ICCR, ICCR_SCP);
	FUNC2(pd, ICSTART, 0);

	FUNC4(10);

	FUNC2(pd, ICCR, ICCR_TRS);
	FUNC4(10);
	FUNC2(pd, ICCR, 0);
	FUNC4(10);
	FUNC2(pd, ICCR, ICCR_TRS);
	FUNC4(10);

	return FUNC3(pd);
}