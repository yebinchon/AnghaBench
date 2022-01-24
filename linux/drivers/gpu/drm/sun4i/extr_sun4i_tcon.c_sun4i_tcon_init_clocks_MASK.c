#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sun4i_tcon {void* sclk1; TYPE_1__* quirks; void* sclk0; void* clk; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_channel_1; scalar_t__ has_channel_0; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,char*) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
				  struct sun4i_tcon *tcon)
{
	tcon->clk = FUNC4(dev, "ahb");
	if (FUNC0(tcon->clk)) {
		FUNC3(dev, "Couldn't get the TCON bus clock\n");
		return FUNC1(tcon->clk);
	}
	FUNC2(tcon->clk);

	if (tcon->quirks->has_channel_0) {
		tcon->sclk0 = FUNC4(dev, "tcon-ch0");
		if (FUNC0(tcon->sclk0)) {
			FUNC3(dev, "Couldn't get the TCON channel 0 clock\n");
			return FUNC1(tcon->sclk0);
		}
	}
	FUNC2(tcon->sclk0);

	if (tcon->quirks->has_channel_1) {
		tcon->sclk1 = FUNC4(dev, "tcon-ch1");
		if (FUNC0(tcon->sclk1)) {
			FUNC3(dev, "Couldn't get the TCON channel 1 clock\n");
			return FUNC1(tcon->sclk1);
		}
	}

	return 0;
}