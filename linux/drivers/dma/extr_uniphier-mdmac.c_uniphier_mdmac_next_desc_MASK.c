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
struct virt_dma_desc {int /*<<< orphan*/  node; } ;
struct uniphier_mdmac_desc {int dummy; } ;
struct uniphier_mdmac_chan {struct uniphier_mdmac_desc* md; int /*<<< orphan*/  vc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct uniphier_mdmac_desc* FUNC1 (struct virt_dma_desc*) ; 
 struct virt_dma_desc* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct uniphier_mdmac_desc *
FUNC3(struct uniphier_mdmac_chan *mc)
{
	struct virt_dma_desc *vd;

	vd = FUNC2(&mc->vc);
	if (!vd) {
		mc->md = NULL;
		return NULL;
	}

	FUNC0(&vd->node);

	mc->md = FUNC1(vd);

	return mc->md;
}