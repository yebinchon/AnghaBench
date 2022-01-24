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
struct i2c_algo_bit_data {int /*<<< orphan*/  udelay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_algo_bit_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_algo_bit_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_algo_bit_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_algo_bit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct i2c_algo_bit_data *adap)
{
	/* assert: scl is low */
	FUNC2(adap);
	FUNC0(adap);
	FUNC3(adap, 0);
	FUNC4(adap->udelay);
	FUNC1(adap);
}