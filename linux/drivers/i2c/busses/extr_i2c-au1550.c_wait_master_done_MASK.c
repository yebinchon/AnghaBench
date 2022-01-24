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
struct i2c_au1550_data {int xfer_timeout; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PSC_SMBEVNT ; 
 int PSC_SMBEVNT_MD ; 
 int FUNC0 (struct i2c_au1550_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct i2c_au1550_data *adap)
{
	int i;

	/* Wait for Master Done. */
	for (i = 0; i < 2 * adap->xfer_timeout; i++) {
		if ((FUNC0(adap, PSC_SMBEVNT) & PSC_SMBEVNT_MD) != 0)
			return 0;
		FUNC1(1);
	}

	return -ETIMEDOUT;
}