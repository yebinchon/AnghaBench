#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct cyapa_pip_cmd_states {scalar_t__ in_progress_cmd; } ;
struct TYPE_2__ {struct cyapa_pip_cmd_states pip; } ;
struct cyapa {TYPE_1__ cmd_states; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ PIP_APP_RESP_REPORT_ID ; 
 int PIP_MIN_APP_RESP_LENGTH ; 
 size_t PIP_RESP_APP_CMD_OFFSET ; 
 size_t PIP_RESP_LENGTH_OFFSET ; 
 size_t PIP_RESP_REPORT_ID_OFFSET ; 
 scalar_t__ PIP_RESP_RSVD_KEY ; 
 size_t PIP_RESP_RSVD_OFFSET ; 
 int PIP_UNSUPPORTED_CMD_RESP_LENGTH ; 
 int FUNC1 (scalar_t__*) ; 

bool FUNC2(struct cyapa *cyapa,
		u8 *data, int len)
{
	struct cyapa_pip_cmd_states *pip = &cyapa->cmd_states.pip;
	int resp_len;

	if (!data || len < PIP_MIN_APP_RESP_LENGTH)
		return false;

	if (data[PIP_RESP_REPORT_ID_OFFSET] == PIP_APP_RESP_REPORT_ID &&
			data[PIP_RESP_RSVD_OFFSET] == PIP_RESP_RSVD_KEY) {
		resp_len = FUNC1(&data[PIP_RESP_LENGTH_OFFSET]);
		if (FUNC0(data[PIP_RESP_APP_CMD_OFFSET]) == 0x00 &&
			resp_len == PIP_UNSUPPORTED_CMD_RESP_LENGTH &&
			data[5] == pip->in_progress_cmd) {
			/* Unsupported command code */
			return false;
		} else if (FUNC0(data[PIP_RESP_APP_CMD_OFFSET]) ==
				pip->in_progress_cmd) {
			/* Correct command response received */
			return true;
		}
	}

	return false;
}