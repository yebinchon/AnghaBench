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
struct clk_mgr_internal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTENT ; 
 int /*<<< orphan*/  MP1_SMN_C2PMSG_67 ; 
 int /*<<< orphan*/  MP1_SMN_C2PMSG_83 ; 
 int /*<<< orphan*/  MP1_SMN_C2PMSG_91 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

int FUNC3(struct clk_mgr_internal *clk_mgr, unsigned int msg_id, unsigned int param)
{
	/* First clear response register */
	FUNC2(MP1_SMN_C2PMSG_91, 0);

	/* Set the parameter register for the SMU message, unit is Mhz */
	FUNC2(MP1_SMN_C2PMSG_83, param);

	/* Trigger the message transaction by writing the message ID */
	FUNC2(MP1_SMN_C2PMSG_67, msg_id);

	FUNC1(MP1_SMN_C2PMSG_91, CONTENT, 1, 10, 200000);

	/* Actual dispclk set is returned in the parameter register */
	return FUNC0(MP1_SMN_C2PMSG_83);
}