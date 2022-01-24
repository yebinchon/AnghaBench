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
struct amd_i2c_common {int dummy; } ;
struct amd_i2c_dev {struct amd_i2c_common common; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amd_i2c_common*,int) ; 
 int FUNC1 (struct amd_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct amd_i2c_dev*) ; 

__attribute__((used)) static int FUNC3(struct amd_i2c_dev *i2c_dev, bool enable)
{
	struct amd_i2c_common *i2c_common = &i2c_dev->common;

	FUNC2(i2c_dev);
	FUNC0(i2c_common, enable);

	return FUNC1(i2c_dev);
}