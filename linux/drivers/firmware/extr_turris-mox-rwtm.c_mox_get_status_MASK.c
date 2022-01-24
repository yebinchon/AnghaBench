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
typedef  enum mbox_cmd { ____Placeholder_mbox_cmd } mbox_cmd ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MBOX_STS_FAIL ; 
 scalar_t__ MBOX_STS_SUCCESS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(enum mbox_cmd cmd, u32 retval)
{
	if (FUNC0(retval) != cmd ||
	    FUNC1(retval) != MBOX_STS_SUCCESS)
		return -EIO;
	else if (FUNC1(retval) == MBOX_STS_FAIL)
		return -(int)FUNC2(retval);
	else
		return FUNC2(retval);
}