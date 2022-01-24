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
struct pca9541 {int select_timeout; int /*<<< orphan*/  arb_timeout; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCA9541_CONTROL ; 
 int PCA9541_CTL_BUSINIT ; 
 int PCA9541_CTL_NTESTON ; 
 int /*<<< orphan*/  PCA9541_ISTAT ; 
 int PCA9541_ISTAT_NMYTEST ; 
 int SELECT_DELAY_LONG ; 
 int SELECT_DELAY_SHORT ; 
 scalar_t__ FUNC0 (int) ; 
 struct i2c_mux_core* FUNC1 (struct i2c_client*) ; 
 struct pca9541* FUNC2 (struct i2c_mux_core*) ; 
 scalar_t__ FUNC3 (int) ; 
 int* pca9541_control ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct i2c_mux_core *muxc = FUNC1(client);
	struct pca9541 *data = FUNC2(muxc);
	int reg;

	reg = FUNC4(client, PCA9541_CONTROL);
	if (reg < 0)
		return reg;

	if (FUNC0(reg)) {
		int istat;
		/*
		 * Bus is off. Request ownership or turn it on unless
		 * other master requested ownership.
		 */
		istat = FUNC4(client, PCA9541_ISTAT);
		if (!(istat & PCA9541_ISTAT_NMYTEST)
		    || FUNC6(data->arb_timeout)) {
			/*
			 * Other master did not request ownership,
			 * or arbitration timeout expired. Take the bus.
			 */
			FUNC5(client,
					  PCA9541_CONTROL,
					  pca9541_control[reg & 0x0f]
					  | PCA9541_CTL_NTESTON);
			data->select_timeout = SELECT_DELAY_SHORT;
		} else {
			/*
			 * Other master requested ownership.
			 * Set extra long timeout to give it time to acquire it.
			 */
			data->select_timeout = SELECT_DELAY_LONG * 2;
		}
	} else if (FUNC3(reg)) {
		/*
		 * Bus is on, and we own it. We are done with acquisition.
		 * Reset NTESTON and BUSINIT, then return success.
		 */
		if (reg & (PCA9541_CTL_NTESTON | PCA9541_CTL_BUSINIT))
			FUNC5(client,
					  PCA9541_CONTROL,
					  reg & ~(PCA9541_CTL_NTESTON
						  | PCA9541_CTL_BUSINIT));
		return 1;
	} else {
		/*
		 * Other master owns the bus.
		 * If arbitration timeout has expired, force ownership.
		 * Otherwise request it.
		 */
		data->select_timeout = SELECT_DELAY_LONG;
		if (FUNC6(data->arb_timeout)) {
			/* Time is up, take the bus and reset it. */
			FUNC5(client,
					  PCA9541_CONTROL,
					  pca9541_control[reg & 0x0f]
					  | PCA9541_CTL_BUSINIT
					  | PCA9541_CTL_NTESTON);
		} else {
			/* Request bus ownership if needed */
			if (!(reg & PCA9541_CTL_NTESTON))
				FUNC5(client,
						  PCA9541_CONTROL,
						  reg | PCA9541_CTL_NTESTON);
		}
	}
	return 0;
}