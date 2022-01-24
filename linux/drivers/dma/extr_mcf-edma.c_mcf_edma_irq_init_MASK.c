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
struct resource {int start; int end; } ;
struct platform_device {int dummy; } ;
struct fsl_edma_engine {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  mcf_edma_err_handler ; 
 int /*<<< orphan*/  mcf_edma_tx_handler ; 
 int FUNC0 (struct platform_device*,char*) ; 
 struct resource* FUNC1 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct fsl_edma_engine*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev,
				struct fsl_edma_engine *mcf_edma)
{
	int ret = 0, i;
	struct resource *res;

	res = FUNC1(pdev,
				IORESOURCE_IRQ, "edma-tx-00-15");
	if (!res)
		return -1;

	for (ret = 0, i = res->start; i <= res->end; ++i)
		ret |= FUNC2(i, mcf_edma_tx_handler, 0, "eDMA", mcf_edma);
	if (ret)
		return ret;

	res = FUNC1(pdev,
			IORESOURCE_IRQ, "edma-tx-16-55");
	if (!res)
		return -1;

	for (ret = 0, i = res->start; i <= res->end; ++i)
		ret |= FUNC2(i, mcf_edma_tx_handler, 0, "eDMA", mcf_edma);
	if (ret)
		return ret;

	ret = FUNC0(pdev, "edma-tx-56-63");
	if (ret != -ENXIO) {
		ret = FUNC2(ret, mcf_edma_tx_handler,
				  0, "eDMA", mcf_edma);
		if (ret)
			return ret;
	}

	ret = FUNC0(pdev, "edma-err");
	if (ret != -ENXIO) {
		ret = FUNC2(ret, mcf_edma_err_handler,
				  0, "eDMA", mcf_edma);
		if (ret)
			return ret;
	}

	return 0;
}