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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct hdmi_core_data {int /*<<< orphan*/  base; } ;
struct cec_msg {int len; int* msg; } ;
struct cec_adapter {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HDMI_CEC_DBG_3 ; 
 scalar_t__ HDMI_CEC_INT_STATUS_0 ; 
 scalar_t__ HDMI_CEC_INT_STATUS_1 ; 
 int HDMI_CEC_RETRANSMIT_CNT_INT_MASK ; 
 scalar_t__ HDMI_CEC_TRANSMIT_DATA ; 
 scalar_t__ HDMI_CEC_TX_COMMAND ; 
 scalar_t__ HDMI_CEC_TX_DEST ; 
 int HDMI_CEC_TX_FIFO_INT_MASK ; 
 scalar_t__ HDMI_CEC_TX_INIT ; 
 scalar_t__ HDMI_CEC_TX_OPERAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 struct hdmi_core_data* FUNC1 (struct cec_adapter*) ; 
 int FUNC2 (struct cec_msg*) ; 
 int FUNC3 (struct cec_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct cec_adapter *adap, u8 attempts,
				   u32 signal_free_time, struct cec_msg *msg)
{
	struct hdmi_core_data *core = FUNC1(adap);
	int temp;
	u32 i;

	/* Clear TX FIFO */
	if (!FUNC4(adap)) {
		FUNC6("cec-%s: could not clear TX FIFO for transmit\n",
		       adap->name);
		return -EIO;
	}

	/* Clear TX interrupts */
	FUNC5(core->base, HDMI_CEC_INT_STATUS_0,
		       HDMI_CEC_TX_FIFO_INT_MASK);

	FUNC5(core->base, HDMI_CEC_INT_STATUS_1,
		       HDMI_CEC_RETRANSMIT_CNT_INT_MASK);

	/* Set the retry count */
	FUNC0(core->base, HDMI_CEC_DBG_3, attempts - 1, 6, 4);

	/* Set the initiator addresses */
	FUNC5(core->base, HDMI_CEC_TX_INIT, FUNC3(msg));

	/* Set destination id */
	temp = FUNC2(msg);
	if (msg->len == 1)
		temp |= 0x80;
	FUNC5(core->base, HDMI_CEC_TX_DEST, temp);
	if (msg->len == 1)
		return 0;

	/* Setup command and arguments for the command */
	FUNC5(core->base, HDMI_CEC_TX_COMMAND, msg->msg[1]);

	for (i = 0; i < msg->len - 2; i++)
		FUNC5(core->base, HDMI_CEC_TX_OPERAND + i * 4,
			       msg->msg[2 + i]);

	/* Operand count */
	FUNC5(core->base, HDMI_CEC_TRANSMIT_DATA,
		       (msg->len - 2) | 0x10);
	return 0;
}