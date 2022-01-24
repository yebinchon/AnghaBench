#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hdmi_core_data {TYPE_1__* wp; int /*<<< orphan*/  base; } ;
struct cec_adapter {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int,int,int) ; 
 int FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  HDMI_CEC_INT_ENABLE_0 ; 
 int /*<<< orphan*/  HDMI_CEC_INT_ENABLE_1 ; 
 int /*<<< orphan*/  HDMI_CEC_INT_STATUS_0 ; 
 int /*<<< orphan*/  HDMI_CEC_INT_STATUS_1 ; 
 int /*<<< orphan*/  HDMI_CEC_SETUP ; 
 int /*<<< orphan*/  HDMI_CORE_SYS_INTR_UNMASK4 ; 
 int /*<<< orphan*/  HDMI_IRQ_CORE ; 
 int /*<<< orphan*/  HDMI_WP_CLK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 struct hdmi_core_data* FUNC3 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct hdmi_core_data*) ; 
 int FUNC5 (struct hdmi_core_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct cec_adapter*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct cec_adapter *adap, bool enable)
{
	struct hdmi_core_data *core = FUNC3(adap);
	int temp, err;

	if (!enable) {
		FUNC12(core->base, HDMI_CEC_INT_ENABLE_0, 0);
		FUNC12(core->base, HDMI_CEC_INT_ENABLE_1, 0);
		FUNC2(core->base, HDMI_CORE_SYS_INTR_UNMASK4, 0, 3, 3);
		FUNC9(core->wp, HDMI_IRQ_CORE);
		FUNC11(core->wp, HDMI_IRQ_CORE);
		FUNC2(core->wp->base, HDMI_WP_CLK, 0, 5, 0);
		FUNC4(core);
		return 0;
	}
	err = FUNC5(core);
	if (err)
		return err;

	/*
	 * Initialize CEC clock divider: CEC needs 2MHz clock hence
	 * set the divider to 24 to get 48/24=2MHz clock
	 */
	FUNC2(core->wp->base, HDMI_WP_CLK, 0x18, 5, 0);

	/* Clear TX FIFO */
	if (!FUNC7(adap)) {
		FUNC14("cec-%s: could not clear TX FIFO\n", adap->name);
		err = -EIO;
		goto err_disable_clk;
	}

	/* Clear RX FIFO */
	if (!FUNC6(adap)) {
		FUNC14("cec-%s: could not clear RX FIFO\n", adap->name);
		err = -EIO;
		goto err_disable_clk;
	}

	/* Clear CEC interrupts */
	FUNC12(core->base, HDMI_CEC_INT_STATUS_1,
		FUNC8(core->base, HDMI_CEC_INT_STATUS_1));
	FUNC12(core->base, HDMI_CEC_INT_STATUS_0,
		FUNC8(core->base, HDMI_CEC_INT_STATUS_0));

	/* Enable HDMI core interrupts */
	FUNC10(core->wp, HDMI_IRQ_CORE);
	/* Unmask CEC interrupt */
	FUNC2(core->base, HDMI_CORE_SYS_INTR_UNMASK4, 0x1, 3, 3);
	/*
	 * Enable CEC interrupts:
	 * Transmit Buffer Full/Empty Change event
	 * Receiver FIFO Not Empty event
	 */
	FUNC12(core->base, HDMI_CEC_INT_ENABLE_0, 0x22);
	/*
	 * Enable CEC interrupts:
	 * Frame Retransmit Count Exceeded event
	 */
	FUNC12(core->base, HDMI_CEC_INT_ENABLE_1, 0x02);

	/* cec calibration enable (self clearing) */
	FUNC12(core->base, HDMI_CEC_SETUP, 0x03);
	FUNC13(20);
	FUNC12(core->base, HDMI_CEC_SETUP, 0x04);

	temp = FUNC8(core->base, HDMI_CEC_SETUP);
	if (FUNC0(temp, 4, 4) != 0) {
		temp = FUNC1(temp, 0, 4, 4);
		FUNC12(core->base, HDMI_CEC_SETUP, temp);

		/*
		 * If we enabled CEC in middle of a CEC message on the bus,
		 * we could have start bit irregularity and/or short
		 * pulse event. Clear them now.
		 */
		temp = FUNC8(core->base, HDMI_CEC_INT_STATUS_1);
		temp = FUNC1(0x0, 0x5, 2, 0);
		FUNC12(core->base, HDMI_CEC_INT_STATUS_1, temp);
	}
	return 0;

err_disable_clk:
	FUNC2(core->wp->base, HDMI_WP_CLK, 0, 5, 0);
	FUNC4(core);

	return err;
}