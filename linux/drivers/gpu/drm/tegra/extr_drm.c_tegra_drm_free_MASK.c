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
struct TYPE_2__ {int /*<<< orphan*/  domain; } ;
struct tegra_drm {TYPE_1__ carveout; scalar_t__ domain; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC7(struct tegra_drm *tegra, size_t size, void *virt,
		    dma_addr_t dma)
{
	if (tegra->domain)
		size = FUNC5(&tegra->carveout.domain, size);
	else
		size = FUNC0(size);

	if (tegra->domain) {
		FUNC4(tegra->domain, dma, size);
		FUNC1(&tegra->carveout.domain,
			  FUNC6(&tegra->carveout.domain, dma));
	}

	FUNC2((unsigned long)virt, FUNC3(size));
}