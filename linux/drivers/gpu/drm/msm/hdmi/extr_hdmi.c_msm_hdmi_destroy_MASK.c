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
struct hdmi {int /*<<< orphan*/  pdev; scalar_t__ i2c; int /*<<< orphan*/ * phy_dev; int /*<<< orphan*/ * phy; scalar_t__ workq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct hdmi *hdmi)
{
	/*
	 * at this point, hpd has been disabled,
	 * after flush workq, it's safe to deinit hdcp
	 */
	if (hdmi->workq) {
		FUNC1(hdmi->workq);
		FUNC0(hdmi->workq);
	}
	FUNC2(hdmi);

	if (hdmi->phy_dev) {
		FUNC5(hdmi->phy_dev);
		hdmi->phy = NULL;
		hdmi->phy_dev = NULL;
	}

	if (hdmi->i2c)
		FUNC3(hdmi->i2c);

	FUNC4(hdmi->pdev, NULL);
}