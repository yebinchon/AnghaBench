#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct s3c24xx_dma_phy {struct s3c24xx_dma_chan* serving; int /*<<< orphan*/  id; int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; int /*<<< orphan*/  valid; } ;
struct s3c24xx_dma_engine {TYPE_3__* pdev; TYPE_2__* sdata; TYPE_1__* pdata; struct s3c24xx_dma_phy* phy_chans; } ;
struct s3c24xx_dma_chan {struct s3c24xx_dma_engine* host; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {scalar_t__ has_clocks; } ;
struct TYPE_4__ {int num_phy_channels; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c24xx_dma_chan*,struct s3c24xx_dma_phy*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static
struct s3c24xx_dma_phy *FUNC6(struct s3c24xx_dma_chan *s3cchan)
{
	struct s3c24xx_dma_engine *s3cdma = s3cchan->host;
	struct s3c24xx_dma_phy *phy = NULL;
	unsigned long flags;
	int i;
	int ret;

	for (i = 0; i < s3cdma->pdata->num_phy_channels; i++) {
		phy = &s3cdma->phy_chans[i];

		if (!phy->valid)
			continue;

		if (!FUNC3(s3cchan, phy))
			continue;

		FUNC4(&phy->lock, flags);

		if (!phy->serving) {
			phy->serving = s3cchan;
			FUNC5(&phy->lock, flags);
			break;
		}

		FUNC5(&phy->lock, flags);
	}

	/* No physical channel available, cope with it */
	if (i == s3cdma->pdata->num_phy_channels) {
		FUNC2(&s3cdma->pdev->dev, "no phy channel available\n");
		return NULL;
	}

	/* start the phy clock */
	if (s3cdma->sdata->has_clocks) {
		ret = FUNC0(phy->clk);
		if (ret) {
			FUNC1(&s3cdma->pdev->dev, "could not enable clock for channel %d, err %d\n",
				phy->id, ret);
			phy->serving = NULL;
			return NULL;
		}
	}

	return phy;
}