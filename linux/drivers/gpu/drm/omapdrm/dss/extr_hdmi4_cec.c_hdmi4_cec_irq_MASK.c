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
typedef  int u32 ;
struct hdmi_core_data {int /*<<< orphan*/  base; int /*<<< orphan*/  adap; } ;

/* Variables and functions */
 int CEC_TX_STATUS_MAX_RETRIES ; 
 int CEC_TX_STATUS_NACK ; 
 int CEC_TX_STATUS_OK ; 
 int /*<<< orphan*/  HDMI_CEC_DBG_3 ; 
 int /*<<< orphan*/  HDMI_CEC_INT_STATUS_0 ; 
 int /*<<< orphan*/  HDMI_CEC_INT_STATUS_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi_core_data*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct hdmi_core_data *core)
{
	u32 stat0 = FUNC3(core->base, HDMI_CEC_INT_STATUS_0);
	u32 stat1 = FUNC3(core->base, HDMI_CEC_INT_STATUS_1);

	FUNC4(core->base, HDMI_CEC_INT_STATUS_0, stat0);
	FUNC4(core->base, HDMI_CEC_INT_STATUS_1, stat1);

	if (stat0 & 0x20) {
		FUNC1(core->adap, CEC_TX_STATUS_OK,
				  0, 0, 0, 0);
		FUNC0(core->base, HDMI_CEC_DBG_3, 0x1, 7, 7);
	} else if (stat1 & 0x02) {
		u32 dbg3 = FUNC3(core->base, HDMI_CEC_DBG_3);

		FUNC1(core->adap,
				  CEC_TX_STATUS_NACK |
				  CEC_TX_STATUS_MAX_RETRIES,
				  0, (dbg3 >> 4) & 7, 0, 0);
		FUNC0(core->base, HDMI_CEC_DBG_3, 0x1, 7, 7);
	}
	if (stat0 & 0x02)
		FUNC2(core);
}