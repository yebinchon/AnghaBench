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
struct i2c_algo_pcf_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I2C_PCF_REPSTART ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_algo_pcf_data*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct i2c_algo_pcf_data *adap)
{
	FUNC0(FUNC1(" Sr "));
	FUNC2(adap, 1, I2C_PCF_REPSTART);
}