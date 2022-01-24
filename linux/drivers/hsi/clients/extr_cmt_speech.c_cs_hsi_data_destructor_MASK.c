#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hsi_msg {scalar_t__ ttype; int /*<<< orphan*/  status; struct cs_hsi_iface* context; } ;
struct cs_hsi_iface {scalar_t__ iface_state; int data_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  datawait; } ;
struct TYPE_4__ {TYPE_1__* cl; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ CS_STATE_CLOSED ; 
 scalar_t__ HSI_MSG_READ ; 
 int /*<<< orphan*/  HSI_STATUS_COMPLETED ; 
 int SSI_CHANNEL_STATE_POLL ; 
 int SSI_CHANNEL_STATE_READING ; 
 int SSI_CHANNEL_STATE_WRITING ; 
 TYPE_2__ cs_char_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct hsi_msg *msg)
{
	struct cs_hsi_iface *hi = msg->context;
	const char *dir = (msg->ttype == HSI_MSG_READ) ? "TX" : "RX";

	FUNC0(&cs_char_data.cl->device, "Freeing data %s message\n", dir);

	FUNC2(&hi->lock);
	if (hi->iface_state != CS_STATE_CLOSED)
		FUNC1(&cs_char_data.cl->device,
				"Data %s flush while device active\n", dir);
	if (msg->ttype == HSI_MSG_READ)
		hi->data_state &=
			~(SSI_CHANNEL_STATE_POLL | SSI_CHANNEL_STATE_READING);
	else
		hi->data_state &= ~SSI_CHANNEL_STATE_WRITING;

	msg->status = HSI_STATUS_COMPLETED;
	if (FUNC4(FUNC5(&hi->datawait)))
		FUNC6(&hi->datawait);

	FUNC3(&hi->lock);
}