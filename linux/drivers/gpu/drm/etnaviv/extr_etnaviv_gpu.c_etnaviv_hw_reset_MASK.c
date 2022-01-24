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
struct etnaviv_gpu {int freq_scale; scalar_t__ sec_mode; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ ETNA_SEC_KERNEL ; 
 int /*<<< orphan*/  VIVS_HI_CLOCK_CONTROL ; 
 int VIVS_HI_CLOCK_CONTROL_DISABLE_DEBUG_REGISTERS ; 
 int FUNC0 (unsigned int) ; 
 int VIVS_HI_CLOCK_CONTROL_IDLE_2D ; 
 int VIVS_HI_CLOCK_CONTROL_IDLE_3D ; 
 int VIVS_HI_CLOCK_CONTROL_ISOLATE_GPU ; 
 int VIVS_HI_CLOCK_CONTROL_SOFT_RESET ; 
 int /*<<< orphan*/  VIVS_HI_IDLE_STATE ; 
 int VIVS_HI_IDLE_STATE_FE ; 
 int /*<<< orphan*/  VIVS_MMUv2_AHB_CONTROL ; 
 int VIVS_MMUv2_AHB_CONTROL_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct etnaviv_gpu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct etnaviv_gpu*) ; 
 int FUNC5 (struct etnaviv_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct etnaviv_gpu*,int /*<<< orphan*/ ,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC7 (int) ; 
 scalar_t__ FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct etnaviv_gpu *gpu)
{
	u32 control, idle;
	unsigned long timeout;
	bool failed = true;

	/* We hope that the GPU resets in under one second */
	timeout = jiffies + FUNC7(1000);

	while (FUNC8(timeout)) {
		/* enable clock */
		unsigned int fscale = 1 << (6 - gpu->freq_scale);
		control = FUNC0(fscale);
		FUNC3(gpu, control);

		/* isolate the GPU. */
		control |= VIVS_HI_CLOCK_CONTROL_ISOLATE_GPU;
		FUNC6(gpu, VIVS_HI_CLOCK_CONTROL, control);

		if (gpu->sec_mode == ETNA_SEC_KERNEL) {
			FUNC6(gpu, VIVS_MMUv2_AHB_CONTROL,
			          VIVS_MMUv2_AHB_CONTROL_RESET);
		} else {
			/* set soft reset. */
			control |= VIVS_HI_CLOCK_CONTROL_SOFT_RESET;
			FUNC6(gpu, VIVS_HI_CLOCK_CONTROL, control);
		}

		/* wait for reset. */
		FUNC9(10, 20);

		/* reset soft reset bit. */
		control &= ~VIVS_HI_CLOCK_CONTROL_SOFT_RESET;
		FUNC6(gpu, VIVS_HI_CLOCK_CONTROL, control);

		/* reset GPU isolation. */
		control &= ~VIVS_HI_CLOCK_CONTROL_ISOLATE_GPU;
		FUNC6(gpu, VIVS_HI_CLOCK_CONTROL, control);

		/* read idle register. */
		idle = FUNC5(gpu, VIVS_HI_IDLE_STATE);

		/* try reseting again if FE it not idle */
		if ((idle & VIVS_HI_IDLE_STATE_FE) == 0) {
			FUNC1(gpu->dev, "FE is not idle\n");
			continue;
		}

		/* read reset register. */
		control = FUNC5(gpu, VIVS_HI_CLOCK_CONTROL);

		/* is the GPU idle? */
		if (((control & VIVS_HI_CLOCK_CONTROL_IDLE_3D) == 0) ||
		    ((control & VIVS_HI_CLOCK_CONTROL_IDLE_2D) == 0)) {
			FUNC1(gpu->dev, "GPU is not idle\n");
			continue;
		}

		/* disable debug registers, as they are not normally needed */
		control |= VIVS_HI_CLOCK_CONTROL_DISABLE_DEBUG_REGISTERS;
		FUNC6(gpu, VIVS_HI_CLOCK_CONTROL, control);

		failed = false;
		break;
	}

	if (failed) {
		idle = FUNC5(gpu, VIVS_HI_IDLE_STATE);
		control = FUNC5(gpu, VIVS_HI_CLOCK_CONTROL);

		FUNC2(gpu->dev, "GPU failed to reset: FE %sidle, 3D %sidle, 2D %sidle\n",
			idle & VIVS_HI_IDLE_STATE_FE ? "" : "not ",
			control & VIVS_HI_CLOCK_CONTROL_IDLE_3D ? "" : "not ",
			control & VIVS_HI_CLOCK_CONTROL_IDLE_2D ? "" : "not ");

		return -EBUSY;
	}

	/* We rely on the GPU running, so program the clock */
	FUNC4(gpu);

	return 0;
}