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
struct ccp_device {int sb_avail; int /*<<< orphan*/  sb_queue; int /*<<< orphan*/  sb_mutex; int /*<<< orphan*/  lsbmap; } ;
struct ccp_cmd_queue {unsigned int lsb; struct ccp_device* ccp; int /*<<< orphan*/  lsbmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ccp_cmd_queue *cmd_q, unsigned int start,
			 unsigned int count)
{
	if (!start)
		return;

	if (cmd_q->lsb == start) {
		/* An entry from the private LSB */
		FUNC0(cmd_q->lsbmap, start, count);
	} else {
		/* From the shared LSBs */
		struct ccp_device *ccp = cmd_q->ccp;

		FUNC1(&ccp->sb_mutex);
		FUNC0(ccp->lsbmap, start, count);
		ccp->sb_avail = 1;
		FUNC2(&ccp->sb_mutex);
		FUNC3(&ccp->sb_queue);
	}
}