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
struct tegra_drm {int dummy; } ;
struct falcon {struct tegra_drm* data; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 void FUNC0 (struct tegra_drm*,size_t,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct falcon *falcon, size_t size,
			    dma_addr_t iova, void *va)
{
	struct tegra_drm *tegra = falcon->data;

	return FUNC0(tegra, size, va, iova);
}