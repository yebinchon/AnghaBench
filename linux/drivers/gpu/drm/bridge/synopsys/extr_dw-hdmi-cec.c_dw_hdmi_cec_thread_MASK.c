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
struct dw_hdmi_cec {int tx_done; int rx_done; int /*<<< orphan*/  rx_msg; int /*<<< orphan*/  tx_status; } ;
struct cec_adapter {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct dw_hdmi_cec* FUNC0 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct cec_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cec_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct cec_adapter *adap = data;
	struct dw_hdmi_cec *cec = FUNC0(adap);

	if (cec->tx_done) {
		cec->tx_done = false;
		FUNC2(adap, cec->tx_status);
	}
	if (cec->rx_done) {
		cec->rx_done = false;
		FUNC3();
		FUNC1(adap, &cec->rx_msg);
	}
	return IRQ_HANDLED;
}