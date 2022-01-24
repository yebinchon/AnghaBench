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
struct g2d_data {int /*<<< orphan*/  cmdlist_dma_attrs; scalar_t__ cmdlist_pool; scalar_t__ cmdlist_pool_virt; int /*<<< orphan*/  drm_dev; int /*<<< orphan*/  free_cmdlist; struct device* dev; } ;
struct g2d_buf_info {int /*<<< orphan*/ * reg_types; } ;
struct g2d_cmdlist_node {int /*<<< orphan*/  list; struct g2d_buf_info buf_info; scalar_t__ dma_addr; scalar_t__ cmdlist; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_WRITE_COMBINE ; 
 int ENOMEM ; 
 int G2D_CMDLIST_NUM ; 
 int /*<<< orphan*/  G2D_CMDLIST_POOL_SIZE ; 
 int G2D_CMDLIST_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int MAX_REG_TYPE_NR ; 
 int /*<<< orphan*/  REG_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct g2d_cmdlist_node* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct g2d_data *g2d)
{
	struct device *dev = g2d->dev;
	struct g2d_cmdlist_node *node;
	int nr;
	int ret;
	struct g2d_buf_info *buf_info;

	g2d->cmdlist_dma_attrs = DMA_ATTR_WRITE_COMBINE;

	g2d->cmdlist_pool_virt = FUNC1(FUNC5(g2d->drm_dev),
						G2D_CMDLIST_POOL_SIZE,
						&g2d->cmdlist_pool, GFP_KERNEL,
						g2d->cmdlist_dma_attrs);
	if (!g2d->cmdlist_pool_virt) {
		FUNC0(dev, "failed to allocate dma memory\n");
		return -ENOMEM;
	}

	node = FUNC3(G2D_CMDLIST_NUM, sizeof(*node), GFP_KERNEL);
	if (!node) {
		ret = -ENOMEM;
		goto err;
	}

	for (nr = 0; nr < G2D_CMDLIST_NUM; nr++) {
		unsigned int i;

		node[nr].cmdlist =
			g2d->cmdlist_pool_virt + nr * G2D_CMDLIST_SIZE;
		node[nr].dma_addr =
			g2d->cmdlist_pool + nr * G2D_CMDLIST_SIZE;

		buf_info = &node[nr].buf_info;
		for (i = 0; i < MAX_REG_TYPE_NR; i++)
			buf_info->reg_types[i] = REG_TYPE_NONE;

		FUNC4(&node[nr].list, &g2d->free_cmdlist);
	}

	return 0;

err:
	FUNC2(FUNC5(g2d->drm_dev), G2D_CMDLIST_POOL_SIZE,
			g2d->cmdlist_pool_virt,
			g2d->cmdlist_pool, g2d->cmdlist_dma_attrs);
	return ret;
}