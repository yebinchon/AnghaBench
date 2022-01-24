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
struct ccp_device {int sb_avail; int /*<<< orphan*/  sb_queue; int /*<<< orphan*/  sb_mutex; int /*<<< orphan*/  sb; } ;
struct ccp_cmd_queue {struct ccp_device* ccp; } ;

/* Variables and functions */
 scalar_t__ KSB_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ccp_cmd_queue *cmd_q, unsigned int start,
			 unsigned int count)
{
	struct ccp_device *ccp = cmd_q->ccp;

	if (!start)
		return;

	FUNC1(&ccp->sb_mutex);

	FUNC0(ccp->sb, start - KSB_START, count);

	ccp->sb_avail = 1;

	FUNC2(&ccp->sb_mutex);

	FUNC3(&ccp->sb_queue);
}