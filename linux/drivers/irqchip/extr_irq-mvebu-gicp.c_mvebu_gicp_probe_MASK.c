#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mvebu_gicp_spi_range {int dummy; } ;
struct mvebu_gicp {int spi_ranges_cnt; int /*<<< orphan*/  spi_cnt; void* spi_bitmap; TYPE_1__* spi_ranges; int /*<<< orphan*/  res; int /*<<< orphan*/  spi_lock; TYPE_2__* dev; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {scalar_t__ count; scalar_t__ start; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 void* FUNC2 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 struct mvebu_gicp* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gicp_domain_ops ; 
 int /*<<< orphan*/  gicp_msi_domain_info ; 
 struct irq_domain* FUNC4 (struct irq_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mvebu_gicp*) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_domain*) ; 
 struct irq_domain* FUNC6 (struct device_node*) ; 
 struct device_node* FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 int FUNC9 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*,char*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct irq_domain* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct mvebu_gicp*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct mvebu_gicp *gicp;
	struct irq_domain *inner_domain, *plat_domain, *parent_domain;
	struct device_node *node = pdev->dev.of_node;
	struct device_node *irq_parent_dn;
	int ret, i;

	gicp = FUNC3(&pdev->dev, sizeof(*gicp), GFP_KERNEL);
	if (!gicp)
		return -ENOMEM;

	gicp->dev = &pdev->dev;
	FUNC14(&gicp->spi_lock);

	gicp->res = FUNC11(pdev, IORESOURCE_MEM, 0);
	if (!gicp->res)
		return -ENODEV;

	ret = FUNC9(node, "marvell,spi-ranges");
	if (ret < 0)
		return ret;

	gicp->spi_ranges_cnt = ret / 2;

	gicp->spi_ranges =
		FUNC2(&pdev->dev,
			     gicp->spi_ranges_cnt,
			     sizeof(struct mvebu_gicp_spi_range),
			     GFP_KERNEL);
	if (!gicp->spi_ranges)
		return -ENOMEM;

	for (i = 0; i < gicp->spi_ranges_cnt; i++) {
		FUNC10(node, "marvell,spi-ranges",
					   i * 2,
					   &gicp->spi_ranges[i].start);

		FUNC10(node, "marvell,spi-ranges",
					   i * 2 + 1,
					   &gicp->spi_ranges[i].count);

		gicp->spi_cnt += gicp->spi_ranges[i].count;
	}

	gicp->spi_bitmap = FUNC2(&pdev->dev,
				FUNC0(gicp->spi_cnt), sizeof(long),
				GFP_KERNEL);
	if (!gicp->spi_bitmap)
		return -ENOMEM;

	irq_parent_dn = FUNC7(node);
	if (!irq_parent_dn) {
		FUNC1(&pdev->dev, "failed to find parent IRQ node\n");
		return -ENODEV;
	}

	parent_domain = FUNC6(irq_parent_dn);
	if (!parent_domain) {
		FUNC1(&pdev->dev, "failed to find parent IRQ domain\n");
		return -ENODEV;
	}

	inner_domain = FUNC4(parent_domain, 0,
						   gicp->spi_cnt,
						   FUNC8(node),
						   &gicp_domain_ops, gicp);
	if (!inner_domain)
		return -ENOMEM;


	plat_domain = FUNC12(FUNC8(node),
						     &gicp_msi_domain_info,
						     inner_domain);
	if (!plat_domain) {
		FUNC5(inner_domain);
		return -ENOMEM;
	}

	FUNC13(pdev, gicp);

	return 0;
}