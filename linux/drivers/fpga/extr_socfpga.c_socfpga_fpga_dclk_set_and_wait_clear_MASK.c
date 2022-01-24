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
typedef  scalar_t__ u32 ;
struct socfpga_fpga_priv {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SOCFPGA_FPGMGR_DCLKCNT_OFST ; 
 scalar_t__ SOCFPGA_FPGMGR_DCLKSTAT_DCNTDONE_E_DONE ; 
 int /*<<< orphan*/  SOCFPGA_FPGMGR_DCLKSTAT_OFST ; 
 int /*<<< orphan*/  FUNC0 (struct socfpga_fpga_priv*) ; 
 scalar_t__ FUNC1 (struct socfpga_fpga_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct socfpga_fpga_priv*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct socfpga_fpga_priv *priv,
						u32 count)
{
	int timeout = 2;
	u32 done;

	/* Clear any existing DONE status. */
	if (FUNC1(priv, SOCFPGA_FPGMGR_DCLKSTAT_OFST))
		FUNC0(priv);

	/* Issue the DCLK count. */
	FUNC2(priv, SOCFPGA_FPGMGR_DCLKCNT_OFST, count);

	/* Poll DCLKSTAT to see if it completed in the timeout period. */
	do {
		done = FUNC1(priv, SOCFPGA_FPGMGR_DCLKSTAT_OFST);
		if (done == SOCFPGA_FPGMGR_DCLKSTAT_DCNTDONE_E_DONE) {
			FUNC0(priv);
			return 0;
		}
		FUNC3(1);
	} while (timeout--);

	return -ETIMEDOUT;
}