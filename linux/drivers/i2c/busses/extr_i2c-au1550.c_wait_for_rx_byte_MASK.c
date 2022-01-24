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
 int EIO ; 
 int /*<<< orphan*/  PSC_SMBSTAT ; 
 unsigned char PSC_SMBSTAT_RE ; 
 int /*<<< orphan*/  PSC_SMBTXRX ; 
 unsigned char FUNC0 (struct i2c_au1550_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct i2c_au1550_data*) ; 

__attribute__((used)) static int FUNC3(struct i2c_au1550_data *adap, unsigned char *out)
{
	int j;

	if (FUNC2(adap))
		return -EIO;

	j =  adap->xfer_timeout * 100;
	do {
		j--;
		if (j <= 0)
			return -EIO;

		if ((FUNC0(adap, PSC_SMBSTAT) & PSC_SMBSTAT_RE) == 0)
			j = 0;
		else
			FUNC1(1);
	} while (j > 0);

	*out = FUNC0(adap, PSC_SMBTXRX);

	return 0;
}