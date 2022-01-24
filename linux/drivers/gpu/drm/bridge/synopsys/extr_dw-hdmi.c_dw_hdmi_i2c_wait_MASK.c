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
struct dw_hdmi_i2c {int stat; int /*<<< orphan*/  cmp; } ;
struct dw_hdmi {struct dw_hdmi_i2c* i2c; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int HDMI_IH_I2CM_STAT0_ERROR ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct dw_hdmi*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct dw_hdmi *hdmi)
{
	struct dw_hdmi_i2c *i2c = hdmi->i2c;
	int stat;

	stat = FUNC1(&i2c->cmp, HZ / 10);
	if (!stat) {
		/* If we can't unwedge, return timeout */
		if (!FUNC0(hdmi))
			return -EAGAIN;

		/* We tried to unwedge; give it another chance */
		stat = FUNC1(&i2c->cmp, HZ / 10);
		if (!stat)
			return -EAGAIN;
	}

	/* Check for error condition on the bus */
	if (i2c->stat & HDMI_IH_I2CM_STAT0_ERROR)
		return -EIO;

	return 0;
}