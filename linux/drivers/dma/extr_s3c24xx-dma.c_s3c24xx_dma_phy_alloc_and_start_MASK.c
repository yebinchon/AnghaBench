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
struct s3c24xx_dma_phy {int /*<<< orphan*/  id; } ;
struct s3c24xx_dma_engine {TYPE_1__* pdev; } ;
struct s3c24xx_dma_chan {int /*<<< orphan*/  state; struct s3c24xx_dma_phy* phy; int /*<<< orphan*/  name; struct s3c24xx_dma_engine* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C24XX_DMA_CHAN_RUNNING ; 
 int /*<<< orphan*/  S3C24XX_DMA_CHAN_WAITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 struct s3c24xx_dma_phy* FUNC1 (struct s3c24xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct s3c24xx_dma_chan*) ; 

__attribute__((used)) static void FUNC3(struct s3c24xx_dma_chan *s3cchan)
{
	struct s3c24xx_dma_engine *s3cdma = s3cchan->host;
	struct s3c24xx_dma_phy *phy;

	phy = FUNC1(s3cchan);
	if (!phy) {
		FUNC0(&s3cdma->pdev->dev, "no physical channel available for xfer on %s\n",
			s3cchan->name);
		s3cchan->state = S3C24XX_DMA_CHAN_WAITING;
		return;
	}

	FUNC0(&s3cdma->pdev->dev, "allocated physical channel %d for xfer on %s\n",
		phy->id, s3cchan->name);

	s3cchan->phy = phy;
	s3cchan->state = S3C24XX_DMA_CHAN_RUNNING;

	FUNC2(s3cchan);
}