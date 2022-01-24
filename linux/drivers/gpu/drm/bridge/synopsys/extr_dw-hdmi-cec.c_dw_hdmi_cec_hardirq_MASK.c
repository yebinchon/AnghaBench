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
struct TYPE_2__ {unsigned int len; void** msg; } ;
struct dw_hdmi_cec {int tx_done; int rx_done; TYPE_1__ rx_msg; int /*<<< orphan*/  tx_status; } ;
struct cec_adapter {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int CEC_STAT_DONE ; 
 unsigned int CEC_STAT_EOM ; 
 unsigned int CEC_STAT_ERROR_INIT ; 
 unsigned int CEC_STAT_NACK ; 
 int /*<<< orphan*/  CEC_TX_STATUS_ERROR ; 
 int /*<<< orphan*/  CEC_TX_STATUS_NACK ; 
 int /*<<< orphan*/  CEC_TX_STATUS_OK ; 
 scalar_t__ HDMI_CEC_LOCK ; 
 scalar_t__ HDMI_CEC_RX_CNT ; 
 scalar_t__ HDMI_CEC_RX_DATA0 ; 
 scalar_t__ HDMI_IH_CEC_STAT0 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 struct dw_hdmi_cec* FUNC0 (struct cec_adapter*) ; 
 void* FUNC1 (struct dw_hdmi_cec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_hdmi_cec*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct cec_adapter *adap = data;
	struct dw_hdmi_cec *cec = FUNC0(adap);
	unsigned int stat = FUNC1(cec, HDMI_IH_CEC_STAT0);
	irqreturn_t ret = IRQ_HANDLED;

	if (stat == 0)
		return IRQ_NONE;

	FUNC2(cec, stat, HDMI_IH_CEC_STAT0);

	if (stat & CEC_STAT_ERROR_INIT) {
		cec->tx_status = CEC_TX_STATUS_ERROR;
		cec->tx_done = true;
		ret = IRQ_WAKE_THREAD;
	} else if (stat & CEC_STAT_DONE) {
		cec->tx_status = CEC_TX_STATUS_OK;
		cec->tx_done = true;
		ret = IRQ_WAKE_THREAD;
	} else if (stat & CEC_STAT_NACK) {
		cec->tx_status = CEC_TX_STATUS_NACK;
		cec->tx_done = true;
		ret = IRQ_WAKE_THREAD;
	}

	if (stat & CEC_STAT_EOM) {
		unsigned int len, i;

		len = FUNC1(cec, HDMI_CEC_RX_CNT);
		if (len > sizeof(cec->rx_msg.msg))
			len = sizeof(cec->rx_msg.msg);

		for (i = 0; i < len; i++)
			cec->rx_msg.msg[i] =
				FUNC1(cec, HDMI_CEC_RX_DATA0 + i);

		FUNC2(cec, 0, HDMI_CEC_LOCK);

		cec->rx_msg.len = len;
		FUNC3();
		cec->rx_done = true;

		ret = IRQ_WAKE_THREAD;
	}

	return ret;
}