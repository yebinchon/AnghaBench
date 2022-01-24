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
struct soc_data {scalar_t__ has_clocks; } ;
struct s3c24xx_dma_platdata {int num_phy_channels; } ;
struct s3c24xx_dma_phy {int /*<<< orphan*/  clk; scalar_t__ valid; } ;
struct s3c24xx_dma_engine {struct s3c24xx_dma_phy* phy_chans; int /*<<< orphan*/  memcpy; int /*<<< orphan*/  slave; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct s3c24xx_dma_platdata* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct s3c24xx_dma_engine* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct s3c24xx_dma_engine*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct soc_data* FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	const struct s3c24xx_dma_platdata *pdata = FUNC1(&pdev->dev);
	struct s3c24xx_dma_engine *s3cdma = FUNC3(pdev);
	struct soc_data *sdata = FUNC6(pdev);
	int i;

	FUNC2(&s3cdma->slave);
	FUNC2(&s3cdma->memcpy);

	FUNC4(pdev, s3cdma);

	FUNC5(&s3cdma->slave);
	FUNC5(&s3cdma->memcpy);

	if (sdata->has_clocks)
		for (i = 0; i < pdata->num_phy_channels; i++) {
			struct s3c24xx_dma_phy *phy = &s3cdma->phy_chans[i];
			if (phy->valid)
				FUNC0(phy->clk);
		}

	return 0;
}