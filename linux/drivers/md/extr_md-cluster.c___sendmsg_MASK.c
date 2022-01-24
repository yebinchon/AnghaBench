#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct md_cluster_info {int slot_number; TYPE_2__* message_lockres; TYPE_2__* ack_lockres; } ;
struct cluster_msg {int /*<<< orphan*/  slot; } ;
struct TYPE_4__ {int /*<<< orphan*/  sb_lvbptr; } ;
struct TYPE_5__ {TYPE_1__ lksb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_CR ; 
 int /*<<< orphan*/  DLM_LOCK_CW ; 
 int /*<<< orphan*/  DLM_LOCK_EX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct md_cluster_info *cinfo, struct cluster_msg *cmsg)
{
	int error;
	int slot = cinfo->slot_number - 1;

	cmsg->slot = FUNC0(slot);
	/*get EX on Message*/
	error = FUNC1(cinfo->message_lockres, DLM_LOCK_EX);
	if (error) {
		FUNC4("md-cluster: failed to get EX on MESSAGE (%d)\n", error);
		goto failed_message;
	}

	FUNC3(cinfo->message_lockres->lksb.sb_lvbptr, (void *)cmsg,
			sizeof(struct cluster_msg));
	/*down-convert EX to CW on Message*/
	error = FUNC1(cinfo->message_lockres, DLM_LOCK_CW);
	if (error) {
		FUNC4("md-cluster: failed to convert EX to CW on MESSAGE(%d)\n",
				error);
		goto failed_ack;
	}

	/*up-convert CR to EX on Ack*/
	error = FUNC1(cinfo->ack_lockres, DLM_LOCK_EX);
	if (error) {
		FUNC4("md-cluster: failed to convert CR to EX on ACK(%d)\n",
				error);
		goto failed_ack;
	}

	/*down-convert EX to CR on Ack*/
	error = FUNC1(cinfo->ack_lockres, DLM_LOCK_CR);
	if (error) {
		FUNC4("md-cluster: failed to convert EX to CR on ACK(%d)\n",
				error);
		goto failed_ack;
	}

failed_ack:
	error = FUNC2(cinfo->message_lockres);
	if (FUNC5(error != 0)) {
		FUNC4("md-cluster: failed convert to NL on MESSAGE(%d)\n",
			error);
		/* in case the message can't be released due to some reason */
		goto failed_ack;
	}
failed_message:
	return error;
}