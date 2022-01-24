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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct mv_cesa_engine {int /*<<< orphan*/  sram_dma; scalar_t__ sram; int /*<<< orphan*/ * pool; } ;
struct mv_cesa_dev {scalar_t__ sram_size; TYPE_2__* dev; TYPE_1__* caps; struct mv_cesa_engine* engines; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_5__ {int nengines; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_2__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 struct mv_cesa_dev* FUNC7 (struct platform_device*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC9 (struct resource*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev, int idx)
{
	struct mv_cesa_dev *cesa = FUNC7(pdev);
	struct mv_cesa_engine *engine = &cesa->engines[idx];
	const char *res_name = "sram";
	struct resource *res;

	engine->pool = FUNC6(cesa->dev->of_node,
				       "marvell,crypto-srams", idx);
	if (engine->pool) {
		engine->sram = FUNC5(engine->pool,
						  cesa->sram_size,
						  &engine->sram_dma);
		if (engine->sram)
			return 0;

		engine->pool = NULL;
		return -ENOMEM;
	}

	if (cesa->caps->nengines > 1) {
		if (!idx)
			res_name = "sram0";
		else
			res_name = "sram1";
	}

	res = FUNC8(pdev, IORESOURCE_MEM,
					   res_name);
	if (!res || FUNC9(res) < cesa->sram_size)
		return -EINVAL;

	engine->sram = FUNC2(cesa->dev, res);
	if (FUNC0(engine->sram))
		return FUNC1(engine->sram);

	engine->sram_dma = FUNC3(cesa->dev, res->start,
					    cesa->sram_size,
					    DMA_BIDIRECTIONAL, 0);
	if (FUNC4(cesa->dev, engine->sram_dma))
		return -ENOMEM;

	return 0;
}