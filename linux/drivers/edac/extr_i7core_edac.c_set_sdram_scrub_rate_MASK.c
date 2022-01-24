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
typedef  scalar_t__ u32 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {struct i7core_pvt* pvt_info; } ;
struct i7core_pvt {scalar_t__ dclk_freq; struct pci_dev** pci_mcr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  MC_SCRUB_CONTROL ; 
 int /*<<< orphan*/  MC_SSRCONTROL ; 
 scalar_t__ SCRUBINTERVAL_MASK ; 
 scalar_t__ SSR_MODE_DISABLE ; 
 scalar_t__ SSR_MODE_ENABLE ; 
 scalar_t__ SSR_MODE_MASK ; 
 scalar_t__ STARTSCRUB ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct mem_ctl_info *mci, u32 new_bw)
{
	struct i7core_pvt *pvt = mci->pvt_info;
	struct pci_dev *pdev;
	u32 dw_scrub;
	u32 dw_ssr;

	/* Get data from the MC register, function 2 */
	pdev = pvt->pci_mcr[2];
	if (!pdev)
		return -ENODEV;

	FUNC1(pdev, MC_SCRUB_CONTROL, &dw_scrub);

	if (new_bw == 0) {
		/* Prepare to disable petrol scrub */
		dw_scrub &= ~STARTSCRUB;
		/* Stop the patrol scrub engine */
		FUNC3(pdev, MC_SCRUB_CONTROL,
			       dw_scrub & ~SCRUBINTERVAL_MASK);

		/* Get current status of scrub rate and set bit to disable */
		FUNC1(pdev, MC_SSRCONTROL, &dw_ssr);
		dw_ssr &= ~SSR_MODE_MASK;
		dw_ssr |= SSR_MODE_DISABLE;
	} else {
		const int cache_line_size = 64;
		const u32 freq_dclk_mhz = pvt->dclk_freq;
		unsigned long long scrub_interval;
		/*
		 * Translate the desired scrub rate to a register value and
		 * program the corresponding register value.
		 */
		scrub_interval = (unsigned long long)freq_dclk_mhz *
			cache_line_size * 1000000;
		FUNC0(scrub_interval, new_bw);

		if (!scrub_interval || scrub_interval > SCRUBINTERVAL_MASK)
			return -EINVAL;

		dw_scrub = SCRUBINTERVAL_MASK & scrub_interval;

		/* Start the patrol scrub engine */
		FUNC2(pdev, MC_SCRUB_CONTROL,
				       STARTSCRUB | dw_scrub);

		/* Get current status of scrub rate and set bit to enable */
		FUNC1(pdev, MC_SSRCONTROL, &dw_ssr);
		dw_ssr &= ~SSR_MODE_MASK;
		dw_ssr |= SSR_MODE_ENABLE;
	}
	/* Disable or enable scrubbing */
	FUNC2(pdev, MC_SSRCONTROL, dw_ssr);

	return new_bw;
}