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
struct dw_hdmi_i2c {unsigned int stat; int /*<<< orphan*/  cmp; } ;
struct dw_hdmi {struct dw_hdmi_i2c* i2c; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_IH_I2CM_STAT0 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct dw_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_hdmi*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(struct dw_hdmi *hdmi)
{
	struct dw_hdmi_i2c *i2c = hdmi->i2c;
	unsigned int stat;

	stat = FUNC1(hdmi, HDMI_IH_I2CM_STAT0);
	if (!stat)
		return IRQ_NONE;

	FUNC2(hdmi, stat, HDMI_IH_I2CM_STAT0);

	i2c->stat = stat;

	FUNC0(&i2c->cmp);

	return IRQ_HANDLED;
}