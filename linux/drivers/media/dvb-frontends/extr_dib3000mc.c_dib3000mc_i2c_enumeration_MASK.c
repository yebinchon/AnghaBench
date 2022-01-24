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
typedef  int u8 ;
struct i2c_adapter {int dummy; } ;
struct dib3000mc_state {int i2c_addr; struct dib3000mc_config* cfg; struct i2c_adapter* i2c_adap; } ;
struct dib3000mc_config {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OUTMODE_HIGH_Z ; 
 int /*<<< orphan*/  OUTMODE_MPEG2_PAR_CONT_CLK ; 
 scalar_t__ FUNC0 (struct dib3000mc_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct dib3000mc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dib3000mc_state*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dib3000mc_state*) ; 
 struct dib3000mc_state* FUNC5 (int,int /*<<< orphan*/ ) ; 

int FUNC6(struct i2c_adapter *i2c, int no_of_demods, u8 default_addr, struct dib3000mc_config cfg[])
{
	struct dib3000mc_state *dmcst;
	int k;
	u8 new_addr;

	static u8 DIB3000MC_I2C_ADDRESS[] = {20,22,24,26};

	dmcst = FUNC5(sizeof(struct dib3000mc_state), GFP_KERNEL);
	if (dmcst == NULL)
		return -ENOMEM;

	dmcst->i2c_adap = i2c;

	for (k = no_of_demods-1; k >= 0; k--) {
		dmcst->cfg = &cfg[k];

		/* designated i2c address */
		new_addr          = DIB3000MC_I2C_ADDRESS[k];
		dmcst->i2c_addr = new_addr;
		if (FUNC0(dmcst) != 0) {
			dmcst->i2c_addr = default_addr;
			if (FUNC0(dmcst) != 0) {
				FUNC3("-E-  DiB3000P/MC #%d: not identified\n", k);
				FUNC4(dmcst);
				return -ENODEV;
			}
		}

		FUNC1(dmcst, OUTMODE_MPEG2_PAR_CONT_CLK);

		// set new i2c address and force divstr (Bit 1) to value 0 (Bit 0)
		FUNC2(dmcst, 1024, (new_addr << 3) | 0x1);
		dmcst->i2c_addr = new_addr;
	}

	for (k = 0; k < no_of_demods; k++) {
		dmcst->cfg = &cfg[k];
		dmcst->i2c_addr = DIB3000MC_I2C_ADDRESS[k];

		FUNC2(dmcst, 1024, dmcst->i2c_addr << 3);

		/* turn off data output */
		FUNC1(dmcst, OUTMODE_HIGH_Z);
	}

	FUNC4(dmcst);
	return 0;
}