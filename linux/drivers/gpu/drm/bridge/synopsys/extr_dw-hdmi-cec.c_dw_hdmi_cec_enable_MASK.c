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
struct dw_hdmi_cec {int /*<<< orphan*/  hdmi; TYPE_1__* ops; int /*<<< orphan*/  adap; } ;
struct cec_adapter {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* disable ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_LOG_ADDR_INVALID ; 
 unsigned int CEC_STAT_DONE ; 
 unsigned int CEC_STAT_EOM ; 
 unsigned int CEC_STAT_ERROR_INIT ; 
 unsigned int CEC_STAT_NACK ; 
 int /*<<< orphan*/  HDMI_CEC_CTRL ; 
 int /*<<< orphan*/  HDMI_CEC_LOCK ; 
 int /*<<< orphan*/  HDMI_CEC_MASK ; 
 int /*<<< orphan*/  HDMI_CEC_POLARITY ; 
 int /*<<< orphan*/  HDMI_IH_CEC_STAT0 ; 
 int /*<<< orphan*/  HDMI_IH_MUTE_CEC_STAT0 ; 
 struct dw_hdmi_cec* FUNC0 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_hdmi_cec*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct cec_adapter *adap, bool enable)
{
	struct dw_hdmi_cec *cec = FUNC0(adap);

	if (!enable) {
		FUNC2(cec, ~0, HDMI_CEC_MASK);
		FUNC2(cec, ~0, HDMI_IH_MUTE_CEC_STAT0);
		FUNC2(cec, 0, HDMI_CEC_POLARITY);

		cec->ops->disable(cec->hdmi);
	} else {
		unsigned int irqs;

		FUNC2(cec, 0, HDMI_CEC_CTRL);
		FUNC2(cec, ~0, HDMI_IH_CEC_STAT0);
		FUNC2(cec, 0, HDMI_CEC_LOCK);

		FUNC1(cec->adap, CEC_LOG_ADDR_INVALID);

		cec->ops->enable(cec->hdmi);

		irqs = CEC_STAT_ERROR_INIT | CEC_STAT_NACK | CEC_STAT_EOM |
		       CEC_STAT_DONE;
		FUNC2(cec, irqs, HDMI_CEC_POLARITY);
		FUNC2(cec, ~irqs, HDMI_CEC_MASK);
		FUNC2(cec, ~irqs, HDMI_IH_MUTE_CEC_STAT0);
	}
	return 0;
}