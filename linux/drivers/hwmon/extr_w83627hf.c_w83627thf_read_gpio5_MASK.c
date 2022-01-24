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
struct w83627hf_sio_data {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  W83627HF_LD_GPIO5 ; 
 int /*<<< orphan*/  W83627THF_GPIO5_DR ; 
 int /*<<< orphan*/  W83627THF_GPIO5_EN ; 
 int /*<<< orphan*/  W83627THF_GPIO5_IOSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct w83627hf_sio_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (struct w83627hf_sio_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct w83627hf_sio_data*) ; 
 int FUNC6 (struct w83627hf_sio_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct w83627hf_sio_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct w83627hf_sio_data *sio_data = FUNC1(&pdev->dev);
	int res = 0xff, sel;

	if (FUNC4(sio_data)) {
		/*
		 * Some other driver reserved the address space for itself.
		 * We don't want to fail driver instantiation because of that,
		 * so display a warning and keep going.
		 */
		FUNC3(&pdev->dev,
			 "Can not read VID data: Failed to enable SuperIO access\n");
		return res;
	}

	FUNC7(sio_data, W83627HF_LD_GPIO5);

	res = 0xff;

	/* Make sure these GPIO pins are enabled */
	if (!(FUNC6(sio_data, W83627THF_GPIO5_EN) & (1<<3))) {
		FUNC0(&pdev->dev, "GPIO5 disabled, no VID function\n");
		goto exit;
	}

	/*
	 * Make sure the pins are configured for input
	 * There must be at least five (VRM 9), and possibly 6 (VRM 10)
	 */
	sel = FUNC6(sio_data, W83627THF_GPIO5_IOSR) & 0x3f;
	if ((sel & 0x1f) != 0x1f) {
		FUNC0(&pdev->dev, "GPIO5 not configured for VID "
			"function\n");
		goto exit;
	}

	FUNC2(&pdev->dev, "Reading VID from GPIO5\n");
	res = FUNC6(sio_data, W83627THF_GPIO5_DR) & sel;

exit:
	FUNC5(sio_data);
	return res;
}