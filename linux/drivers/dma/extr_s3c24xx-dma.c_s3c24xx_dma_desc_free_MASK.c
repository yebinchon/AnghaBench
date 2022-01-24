#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  chan; } ;
struct virt_dma_desc {TYPE_1__ tx; } ;
struct s3c24xx_txd {int dummy; } ;
struct s3c24xx_dma_chan {int /*<<< orphan*/  slave; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct s3c24xx_txd*) ; 
 struct s3c24xx_dma_chan* FUNC2 (int /*<<< orphan*/ ) ; 
 struct s3c24xx_txd* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct virt_dma_desc *vd)
{
	struct s3c24xx_txd *txd = FUNC3(&vd->tx);
	struct s3c24xx_dma_chan *s3cchan = FUNC2(vd->tx.chan);

	if (!s3cchan->slave)
		FUNC0(&vd->tx);

	FUNC1(txd);
}