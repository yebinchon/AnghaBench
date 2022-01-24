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
struct i2c_dev {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  i2c_dev_list_lock ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct i2c_dev *i2c_dev)
{
	FUNC2(&i2c_dev_list_lock);
	FUNC1(&i2c_dev->list);
	FUNC3(&i2c_dev_list_lock);
	FUNC0(i2c_dev);
}