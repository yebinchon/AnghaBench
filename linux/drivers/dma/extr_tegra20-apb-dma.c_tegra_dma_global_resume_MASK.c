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
struct tegra_dma_channel {struct tegra_dma* tdma; } ;
struct tegra_dma {scalar_t__ global_pause_count; int /*<<< orphan*/  global_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEGRA_APBDMA_GENERAL ; 
 int /*<<< orphan*/  TEGRA_APBDMA_GENERAL_ENABLE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_dma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tegra_dma_channel *tdc)
{
	struct tegra_dma *tdma = tdc->tdma;

	FUNC1(&tdma->global_lock);

	if (FUNC0(tdc->tdma->global_pause_count == 0))
		goto out;

	if (--tdc->tdma->global_pause_count == 0)
		FUNC3(tdma, TEGRA_APBDMA_GENERAL,
			   TEGRA_APBDMA_GENERAL_ENABLE);

out:
	FUNC2(&tdma->global_lock);
}