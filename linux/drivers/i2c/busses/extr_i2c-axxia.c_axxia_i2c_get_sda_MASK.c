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
struct i2c_adapter {int dummy; } ;
struct axxia_i2c_dev {scalar_t__ base; } ;

/* Variables and functions */
 int BM_SDAS ; 
 scalar_t__ I2C_BUS_MONITOR ; 
 struct axxia_i2c_dev* FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct i2c_adapter *adap)
{
	struct axxia_i2c_dev *idev = FUNC0(adap);

	return !!(FUNC1(idev->base + I2C_BUS_MONITOR) & BM_SDAS);
}