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
struct sun4i_hdmi {int /*<<< orphan*/  bus_clk; int /*<<< orphan*/  mod_clk; int /*<<< orphan*/  ddc_i2c; int /*<<< orphan*/  i2c; int /*<<< orphan*/  encoder; int /*<<< orphan*/  connector; int /*<<< orphan*/  cec_adap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sun4i_hdmi* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct device *dev, struct device *master,
			    void *data)
{
	struct sun4i_hdmi *hdmi = FUNC2(dev);

	FUNC0(hdmi->cec_adap);
	FUNC3(&hdmi->connector);
	FUNC4(&hdmi->encoder);
	FUNC5(hdmi->i2c);
	FUNC6(hdmi->ddc_i2c);
	FUNC1(hdmi->mod_clk);
	FUNC1(hdmi->bus_clk);
}