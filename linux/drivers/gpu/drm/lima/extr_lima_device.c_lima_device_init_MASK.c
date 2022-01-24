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
struct resource {int dummy; } ;
struct lima_device {scalar_t__ id; int /*<<< orphan*/  empty_vm; int /*<<< orphan*/  dlbu_dma; scalar_t__ dlbu_cpu; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk_gpu; int /*<<< orphan*/  clk_bus; int /*<<< orphan*/  iomem; int /*<<< orphan*/  pdev; int /*<<< orphan*/  va_end; scalar_t__ va_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LIMA_PAGE_SIZE ; 
 int /*<<< orphan*/  LIMA_VA_RESERVE_END ; 
 int /*<<< orphan*/  LIMA_VA_RESERVE_START ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct resource*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct lima_device*) ; 
 int FUNC11 (struct lima_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct lima_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct lima_device*,int) ; 
 scalar_t__ lima_gpu_mali450 ; 
 int FUNC14 (struct lima_device*) ; 
 int FUNC15 (struct lima_device*,int) ; 
 int FUNC16 (struct lima_device*) ; 
 int lima_ip_num ; 
 int /*<<< orphan*/  FUNC17 (struct lima_device*) ; 
 int FUNC18 (struct lima_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct lima_device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC22(struct lima_device *ldev)
{
	int err, i;
	struct resource *res;

	FUNC9(ldev->dev, FUNC0(32));

	err = FUNC11(ldev);
	if (err)
		return err;

	err = FUNC18(ldev);
	if (err)
		goto err_out0;

	ldev->empty_vm = FUNC19(ldev);
	if (!ldev->empty_vm) {
		err = -ENOMEM;
		goto err_out1;
	}

	ldev->va_start = 0;
	if (ldev->id == lima_gpu_mali450) {
		ldev->va_end = LIMA_VA_RESERVE_START;
		ldev->dlbu_cpu = FUNC7(
			ldev->dev, LIMA_PAGE_SIZE,
			&ldev->dlbu_dma, GFP_KERNEL);
		if (!ldev->dlbu_cpu) {
			err = -ENOMEM;
			goto err_out2;
		}
	} else
		ldev->va_end = LIMA_VA_RESERVE_END;

	res = FUNC21(ldev->pdev, IORESOURCE_MEM, 0);
	ldev->iomem = FUNC6(ldev->dev, res);
	if (FUNC1(ldev->iomem)) {
		FUNC4(ldev->dev, "fail to ioremap iomem\n");
		err = FUNC2(ldev->iomem);
		goto err_out3;
	}

	for (i = 0; i < lima_ip_num; i++) {
		err = FUNC15(ldev, i);
		if (err)
			goto err_out4;
	}

	err = FUNC14(ldev);
	if (err)
		goto err_out4;

	err = FUNC16(ldev);
	if (err)
		goto err_out5;

	FUNC5(ldev->dev, "bus rate = %lu\n", FUNC3(ldev->clk_bus));
	FUNC5(ldev->dev, "mod rate = %lu", FUNC3(ldev->clk_gpu));

	return 0;

err_out5:
	FUNC12(ldev);
err_out4:
	while (--i >= 0)
		FUNC13(ldev, i);
err_out3:
	if (ldev->dlbu_cpu)
		FUNC8(ldev->dev, LIMA_PAGE_SIZE,
			    ldev->dlbu_cpu, ldev->dlbu_dma);
err_out2:
	FUNC20(ldev->empty_vm);
err_out1:
	FUNC17(ldev);
err_out0:
	FUNC10(ldev);
	return err;
}