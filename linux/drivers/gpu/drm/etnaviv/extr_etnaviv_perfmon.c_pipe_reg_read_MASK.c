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
typedef  scalar_t__ u32 ;
struct etnaviv_pm_signal {scalar_t__ data; } ;
struct etnaviv_pm_domain {int /*<<< orphan*/  profile_read; int /*<<< orphan*/  profile_config; } ;
struct TYPE_2__ {unsigned int pixel_pipes; } ;
struct etnaviv_gpu {TYPE_1__ identity; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIVS_HI_CLOCK_CONTROL ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ VIVS_HI_CLOCK_CONTROL_DEBUG_PIXEL_PIPE__MASK ; 
 scalar_t__ FUNC1 (struct etnaviv_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct etnaviv_gpu*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static u32 FUNC3(struct etnaviv_gpu *gpu,
	const struct etnaviv_pm_domain *domain,
	const struct etnaviv_pm_signal *signal)
{
	u32 clock = FUNC1(gpu, VIVS_HI_CLOCK_CONTROL);
	u32 value = 0;
	unsigned i;

	for (i = 0; i < gpu->identity.pixel_pipes; i++) {
		clock &= ~(VIVS_HI_CLOCK_CONTROL_DEBUG_PIXEL_PIPE__MASK);
		clock |= FUNC0(i);
		FUNC2(gpu, VIVS_HI_CLOCK_CONTROL, clock);
		FUNC2(gpu, domain->profile_config, signal->data);
		value += FUNC1(gpu, domain->profile_read);
	}

	/* switch back to pixel pipe 0 to prevent GPU hang */
	clock &= ~(VIVS_HI_CLOCK_CONTROL_DEBUG_PIXEL_PIPE__MASK);
	clock |= FUNC0(0);
	FUNC2(gpu, VIVS_HI_CLOCK_CONTROL, clock);

	return value;
}