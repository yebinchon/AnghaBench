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
struct g2d_data {int /*<<< orphan*/  cmdlist_dma_attrs; scalar_t__ cmdlist_pool; scalar_t__ cmdlist_pool_virt; int /*<<< orphan*/  drm_dev; int /*<<< orphan*/  cmdlist_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  G2D_CMDLIST_POOL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct g2d_data *g2d)
{
	FUNC1(g2d->cmdlist_node);

	if (g2d->cmdlist_pool_virt && g2d->cmdlist_pool) {
		FUNC0(FUNC2(g2d->drm_dev),
				G2D_CMDLIST_POOL_SIZE,
				g2d->cmdlist_pool_virt,
				g2d->cmdlist_pool, g2d->cmdlist_dma_attrs);
	}
}