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
struct i2c_algorithm {int dummy; } ;
struct i2c_adapter {int /*<<< orphan*/ * algo_data; struct i2c_algorithm* algo; int /*<<< orphan*/  name; } ;
struct dibx000_i2c_master {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,struct dibx000_i2c_master*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_adapter *i2c_adap,
				struct i2c_algorithm *algo, const char *name,
				struct dibx000_i2c_master *mst)
{
	FUNC2(i2c_adap->name, name, sizeof(i2c_adap->name));
	i2c_adap->algo = algo;
	i2c_adap->algo_data = NULL;
	FUNC1(i2c_adap, mst);
	if (FUNC0(i2c_adap) < 0)
		return -ENODEV;
	return 0;
}