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
struct hdmi_context {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  HDMI_PHY_STATUS ; 
 int HDMI_PHY_STATUS_READY ; 
 int FUNC2 (struct hdmi_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct hdmi_context *hdata)
{
	int tries;

	for (tries = 0; tries < 10; ++tries) {
		u32 val = FUNC2(hdata, HDMI_PHY_STATUS);

		if (val & HDMI_PHY_STATUS_READY) {
			FUNC0(hdata->dev,
					  "PLL stabilized after %d tries\n",
					  tries);
			return;
		}
		FUNC3(10, 20);
	}

	FUNC1(hdata->dev, "PLL could not reach steady state\n");
}