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
struct ims_pcu {int* read_buf; int expected_response; int /*<<< orphan*/  cmd_done; int /*<<< orphan*/  read_pos; int /*<<< orphan*/  cmd_buf_len; int /*<<< orphan*/  cmd_buf; int /*<<< orphan*/  ack_id; int /*<<< orphan*/  setup_complete; } ;

/* Variables and functions */
#define  IMS_PCU_RSP_EVNT_BUTTONS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ims_pcu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ims_pcu *pcu)
{
	switch (pcu->read_buf[0]) {
	case IMS_PCU_RSP_EVNT_BUTTONS:
		if (FUNC2(pcu->setup_complete))
			FUNC1(pcu);
		break;

	default:
		/*
		 * See if we got command completion.
		 * If both the sequence and response code match save
		 * the data and signal completion.
		 */
		if (pcu->read_buf[0] == pcu->expected_response &&
		    pcu->read_buf[1] == pcu->ack_id - 1) {

			FUNC3(pcu->cmd_buf, pcu->read_buf, pcu->read_pos);
			pcu->cmd_buf_len = pcu->read_pos;
			FUNC0(&pcu->cmd_done);
		}
		break;
	}
}