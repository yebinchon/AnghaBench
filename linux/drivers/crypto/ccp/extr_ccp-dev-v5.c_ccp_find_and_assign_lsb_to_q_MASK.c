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
struct ccp_device {int cmd_q_count; int /*<<< orphan*/  dev; struct ccp_cmd_queue* cmd_q; } ;
struct ccp_cmd_queue {int lsb; int /*<<< orphan*/  lsbmask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*,int) ; 
 int EINVAL ; 
 int MAX_LSB_CNT ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC5 (unsigned long*,int) ; 
 unsigned long* qlsb ; 
 scalar_t__ FUNC6 (int,unsigned long*) ; 

__attribute__((used)) static int FUNC7(struct ccp_device *ccp,
					int lsb_cnt, int n_lsbs,
					unsigned long *lsb_pub)
{
	FUNC0(qlsb, MAX_LSB_CNT);
	int bitno;
	int qlsb_wgt;
	int i;

	/* For each queue:
	 * If the count of potential LSBs available to a queue matches the
	 * ordinal given to us in lsb_cnt:
	 * Copy the mask of possible LSBs for this queue into "qlsb";
	 * For each bit in qlsb, see if the corresponding bit in the
	 * aggregation mask is set; if so, we have a match.
	 *     If we have a match, clear the bit in the aggregation to
	 *     mark it as no longer available.
	 *     If there is no match, clear the bit in qlsb and keep looking.
	 */
	for (i = 0; i < ccp->cmd_q_count; i++) {
		struct ccp_cmd_queue *cmd_q = &ccp->cmd_q[i];

		qlsb_wgt = FUNC3(cmd_q->lsbmask, MAX_LSB_CNT);

		if (qlsb_wgt == lsb_cnt) {
			FUNC2(qlsb, cmd_q->lsbmask, MAX_LSB_CNT);

			bitno = FUNC5(qlsb, MAX_LSB_CNT);
			while (bitno < MAX_LSB_CNT) {
				if (FUNC6(bitno, lsb_pub)) {
					/* We found an available LSB
					 * that this queue can access
					 */
					cmd_q->lsb = bitno;
					FUNC1(lsb_pub, bitno, 1);
					FUNC4(ccp->dev,
						 "Queue %d gets LSB %d\n",
						 i, bitno);
					break;
				}
				FUNC1(qlsb, bitno, 1);
				bitno = FUNC5(qlsb, MAX_LSB_CNT);
			}
			if (bitno >= MAX_LSB_CNT)
				return -EINVAL;
			n_lsbs--;
		}
	}
	return n_lsbs;
}