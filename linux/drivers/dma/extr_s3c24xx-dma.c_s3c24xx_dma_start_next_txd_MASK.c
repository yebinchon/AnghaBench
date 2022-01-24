#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct virt_dma_desc {int /*<<< orphan*/  tx; } ;
struct TYPE_3__ {int /*<<< orphan*/  next; } ;
struct TYPE_4__ {int /*<<< orphan*/  node; } ;
struct s3c24xx_txd {TYPE_1__ dsg_list; int /*<<< orphan*/  at; TYPE_2__ vd; } ;
struct s3c24xx_dma_phy {int dummy; } ;
struct s3c24xx_dma_chan {struct s3c24xx_txd* at; int /*<<< orphan*/  vc; struct s3c24xx_dma_phy* phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct s3c24xx_dma_phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c24xx_dma_chan*,struct s3c24xx_txd*) ; 
 struct s3c24xx_txd* FUNC4 (int /*<<< orphan*/ *) ; 
 struct virt_dma_desc* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct s3c24xx_dma_chan *s3cchan)
{
	struct s3c24xx_dma_phy *phy = s3cchan->phy;
	struct virt_dma_desc *vd = FUNC5(&s3cchan->vc);
	struct s3c24xx_txd *txd = FUNC4(&vd->tx);

	FUNC1(&txd->vd.node);

	s3cchan->at = txd;

	/* Wait for channel inactive */
	while (FUNC2(phy))
		FUNC0();

	/* point to the first element of the sg list */
	txd->at = txd->dsg_list.next;
	FUNC3(s3cchan, txd);
}