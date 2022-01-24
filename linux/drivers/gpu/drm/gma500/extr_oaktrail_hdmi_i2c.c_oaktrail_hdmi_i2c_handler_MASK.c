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
struct oaktrail_hdmi_dev {struct hdmi_i2c_dev* i2c_dev; } ;
struct hdmi_i2c_dev {int /*<<< orphan*/  complete; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_HISR ; 
 int HDMI_INTR_HPD ; 
 int HDMI_INTR_I2C_DONE ; 
 int HDMI_INTR_I2C_FULL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct oaktrail_hdmi_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct oaktrail_hdmi_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int this_irq, void *dev)
{
	struct oaktrail_hdmi_dev *hdmi_dev = dev;
	struct hdmi_i2c_dev *i2c_dev = hdmi_dev->i2c_dev;
	u32 stat;

	stat = FUNC0(HDMI_HISR);

	if (stat & HDMI_INTR_HPD) {
		FUNC1(HDMI_HISR, stat | HDMI_INTR_HPD);
		FUNC0(HDMI_HISR);
	}

	if (stat & HDMI_INTR_I2C_FULL)
		FUNC3(hdmi_dev);

	if (stat & HDMI_INTR_I2C_DONE)
		FUNC4(hdmi_dev);

	FUNC2(&i2c_dev->complete);

	return IRQ_HANDLED;
}