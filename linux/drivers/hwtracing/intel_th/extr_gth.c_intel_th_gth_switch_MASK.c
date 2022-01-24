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
struct intel_th_output {int dummy; } ;
struct intel_th_device {int /*<<< orphan*/  dev; } ;
struct gth_device {scalar_t__ base; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CTS_CTL_SEQUENCER_ENABLE ; 
 unsigned long CTS_TRIG_WAITLOOP_DEPTH ; 
 scalar_t__ REG_CTS_CTL ; 
 scalar_t__ REG_CTS_STAT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct gth_device* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gth_device*,struct intel_th_output*) ; 
 int /*<<< orphan*/  FUNC5 (struct gth_device*,struct intel_th_output*,int) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct intel_th_device *thdev,
				struct intel_th_output *output)
{
	struct gth_device *gth = FUNC3(&thdev->dev);
	unsigned long count;
	u32 reg;

	/* trigger */
	FUNC7(0, gth->base + REG_CTS_CTL);
	FUNC7(CTS_CTL_SEQUENCER_ENABLE, gth->base + REG_CTS_CTL);
	/* wait on trigger status */
	for (reg = 0, count = CTS_TRIG_WAITLOOP_DEPTH;
	     count && !(reg & FUNC0(4)); count--) {
		reg = FUNC6(gth->base + REG_CTS_STAT);
		FUNC1();
	}
	if (!count)
		FUNC2(&thdev->dev, "timeout waiting for CTS Trigger\n");

	/* De-assert the trigger */
	FUNC7(0, gth->base + REG_CTS_CTL);

	FUNC5(gth, output, false);
	FUNC4(gth, output);
}