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
struct i2c_au1550_data {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PSC_SMBEVNT ; 
 unsigned long PSC_SMBEVNT_AL ; 
 unsigned long PSC_SMBEVNT_AN ; 
 unsigned long PSC_SMBEVNT_DN ; 
 unsigned long FUNC0 (struct i2c_au1550_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct i2c_au1550_data*) ; 

__attribute__((used)) static int FUNC2(struct i2c_au1550_data *adap)
{
	unsigned long stat;

	if (FUNC1(adap))
		return -ETIMEDOUT;

	stat = FUNC0(adap, PSC_SMBEVNT);
	if ((stat & (PSC_SMBEVNT_DN | PSC_SMBEVNT_AN | PSC_SMBEVNT_AL)) != 0)
		return -ETIMEDOUT;

	return 0;
}