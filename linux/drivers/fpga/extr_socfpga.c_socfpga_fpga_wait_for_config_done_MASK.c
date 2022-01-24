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
struct socfpga_fpga_priv {int /*<<< orphan*/  status_complete; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SOCFPGA_FPGMGR_MON_CONF_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct socfpga_fpga_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct socfpga_fpga_priv*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct socfpga_fpga_priv *priv)
{
	int timeout, ret = 0;

	FUNC2(priv);
	FUNC0(&priv->status_complete);
	FUNC3(priv, SOCFPGA_FPGMGR_MON_CONF_DONE);

	timeout = FUNC4(
						&priv->status_complete,
						FUNC1(10));
	if (timeout == 0)
		ret = -ETIMEDOUT;

	FUNC2(priv);
	return ret;
}