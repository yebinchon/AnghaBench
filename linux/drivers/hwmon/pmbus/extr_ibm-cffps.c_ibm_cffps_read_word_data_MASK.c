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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int CFFPS_MFR_PS_KILL ; 
 int ENODATA ; 
 int PB_STATUS_OFF ; 
 int /*<<< orphan*/  PMBUS_STATUS_MFR_SPECIFIC ; 
#define  PMBUS_STATUS_WORD 128 
 int FUNC0 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client, int page,
				    int reg)
{
	int rc, mfr;

	switch (reg) {
	case PMBUS_STATUS_WORD:
		rc = FUNC1(client, page, reg);
		if (rc < 0)
			return rc;

		mfr = FUNC0(client, page,
					   PMBUS_STATUS_MFR_SPECIFIC);
		if (mfr < 0)
			/*
			 * Return the status register instead of an error,
			 * since we successfully read status.
			 */
			return rc;

		if (mfr & CFFPS_MFR_PS_KILL)
			rc |= PB_STATUS_OFF;
		break;
	default:
		rc = -ENODATA;
		break;
	}

	return rc;
}