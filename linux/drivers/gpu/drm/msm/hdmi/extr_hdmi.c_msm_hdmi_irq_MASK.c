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
struct hdmi {scalar_t__ hdcp_ctrl; int /*<<< orphan*/  i2c; int /*<<< orphan*/  connector; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct hdmi *hdmi = dev_id;

	/* Process HPD: */
	FUNC0(hdmi->connector);

	/* Process DDC: */
	FUNC2(hdmi->i2c);

	/* Process HDCP: */
	if (hdmi->hdcp_ctrl)
		FUNC1(hdmi->hdcp_ctrl);

	/* TODO audio.. */

	return IRQ_HANDLED;
}