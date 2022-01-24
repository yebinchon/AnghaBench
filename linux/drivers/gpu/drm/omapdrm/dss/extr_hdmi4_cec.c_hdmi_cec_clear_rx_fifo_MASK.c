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
struct hdmi_core_data {int /*<<< orphan*/  base; } ;
struct cec_adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDMI_CEC_RX_CONTROL ; 
 int HDMI_CORE_CEC_RETRY ; 
 struct hdmi_core_data* FUNC1 (struct cec_adapter*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC4(struct cec_adapter *adap)
{
	struct hdmi_core_data *core = FUNC1(adap);
	int retry = HDMI_CORE_CEC_RETRY;
	int temp;

	FUNC3(core->base, HDMI_CEC_RX_CONTROL, 0x3);
	retry = HDMI_CORE_CEC_RETRY;
	while (retry) {
		temp = FUNC2(core->base, HDMI_CEC_RX_CONTROL);
		if (FUNC0(temp, 1, 0) == 0)
			break;
		retry--;
	}
	return retry != 0;
}