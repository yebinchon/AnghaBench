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
struct spi_device {int dummy; } ;
struct fpga_manager {struct spi_device* priv; } ;
typedef  enum fpga_mgr_states { ____Placeholder_fpga_mgr_states } fpga_mgr_states ;

/* Variables and functions */
 int /*<<< orphan*/  BUSY ; 
 int /*<<< orphan*/  DONE ; 
 scalar_t__ ENOERR ; 
 int FPGA_MGR_STATE_OPERATING ; 
 int FPGA_MGR_STATE_UNKNOWN ; 
 scalar_t__ FUNC0 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device*,unsigned long*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static enum fpga_mgr_states FUNC3(struct fpga_manager *mgr)
{
	struct spi_device *spi = mgr->priv;
	unsigned long status;

	FUNC1(spi, &status);
	if (!FUNC2(BUSY, &status) && FUNC2(DONE, &status) &&
	    FUNC0(&status) == ENOERR)
		return FPGA_MGR_STATE_OPERATING;

	return FPGA_MGR_STATE_UNKNOWN;
}