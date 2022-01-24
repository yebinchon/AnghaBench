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
struct i2c_adapter {scalar_t__ nr; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/  core_lock ; 
 int /*<<< orphan*/  i2c_adapter_idr ; 
 int FUNC1 (struct i2c_adapter*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct i2c_adapter*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *adap)
{
	int id;

	FUNC3(&core_lock);
	id = FUNC2(&i2c_adapter_idr, adap, adap->nr, adap->nr + 1, GFP_KERNEL);
	FUNC4(&core_lock);
	if (FUNC0(id < 0, "couldn't get idr"))
		return id == -ENOSPC ? -EBUSY : id;

	return FUNC1(adap);
}