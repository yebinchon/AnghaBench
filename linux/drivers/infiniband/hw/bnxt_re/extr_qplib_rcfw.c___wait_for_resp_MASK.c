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
typedef  int u16 ;
struct bnxt_qplib_rcfw {int cmdq_depth; int /*<<< orphan*/  cmdq_bitmap; int /*<<< orphan*/  waitq; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  RCFW_CMD_WAIT_TIME_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct bnxt_qplib_rcfw *rcfw, u16 cookie)
{
	u16 cbit;
	int rc;

	cbit = cookie % rcfw->cmdq_depth;
	rc = FUNC2(rcfw->waitq,
				!FUNC1(cbit, rcfw->cmdq_bitmap),
				FUNC0(RCFW_CMD_WAIT_TIME_MS));
	return rc ? 0 : -ETIMEDOUT;
}