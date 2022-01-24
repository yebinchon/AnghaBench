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
struct hsi_msg {scalar_t__ status; struct cs_hsi_iface* context; } ;
struct cs_hsi_iface {int /*<<< orphan*/  lock; int /*<<< orphan*/  datawait; int /*<<< orphan*/  data_state; } ;

/* Variables and functions */
 scalar_t__ HSI_STATUS_COMPLETED ; 
 int /*<<< orphan*/  SSI_CHANNEL_STATE_WRITING ; 
 int /*<<< orphan*/  FUNC0 (struct cs_hsi_iface*,struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct hsi_msg *msg)
{
	struct cs_hsi_iface *hi = msg->context;

	if (msg->status == HSI_STATUS_COMPLETED) {
		FUNC1(&hi->lock);
		hi->data_state &= ~SSI_CHANNEL_STATE_WRITING;
		if (FUNC3(FUNC4(&hi->datawait)))
			FUNC5(&hi->datawait);
		FUNC2(&hi->lock);
	} else {
		FUNC0(hi, msg);
	}
}