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
typedef  int u32 ;
struct intel_uncore {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPGA_DBG ; 
 int FPGA_DBG_RM_NOCLAIM ; 
 int FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static bool
FUNC3(struct intel_uncore *uncore)
{
	u32 dbg;

	dbg = FUNC0(uncore, FPGA_DBG);
	if (FUNC2(!(dbg & FPGA_DBG_RM_NOCLAIM)))
		return false;

	FUNC1(uncore, FPGA_DBG, FPGA_DBG_RM_NOCLAIM);

	return true;
}