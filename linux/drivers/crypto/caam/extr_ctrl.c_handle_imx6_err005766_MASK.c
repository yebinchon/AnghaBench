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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  MCFGR_AXIPIPE_MASK ; 
 int MCFGR_AXIPIPE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(u32 *mcr)
{
	if (FUNC1("fsl,imx6q") ||
	    FUNC1("fsl,imx6dl") ||
	    FUNC1("fsl,imx6qp"))
		FUNC0(mcr, MCFGR_AXIPIPE_MASK,
			      1 << MCFGR_AXIPIPE_SHIFT);
}