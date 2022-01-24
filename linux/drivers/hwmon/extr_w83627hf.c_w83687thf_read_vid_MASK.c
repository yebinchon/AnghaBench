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
 int /*<<< orphan*/  W83627HF_LD_HWM ; 
 int /*<<< orphan*/  W83687THF_VID_CFG ; 
 int /*<<< orphan*/  W83687THF_VID_DATA ; 
 int /*<<< orphan*/  W83687THF_VID_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct w83627hf_sio_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (struct w83627hf_sio_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct w83627hf_sio_data*) ; 
 int FUNC5 (struct w83627hf_sio_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct w83627hf_sio_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct w83627hf_sio_data *sio_data = FUNC1(&pdev->dev);
	int res = 0xff;

	if (FUNC3(sio_data)) {
		/*
		 * Some other driver reserved the address space for itself.
		 * We don't want to fail driver instantiation because of that,
		 * so display a warning and keep going.
		 */
		FUNC2(&pdev->dev,
			 "Can not read VID data: Failed to enable SuperIO access\n");
		return res;
	}

	FUNC6(sio_data, W83627HF_LD_HWM);

	/* Make sure these GPIO pins are enabled */
	if (!(FUNC5(sio_data, W83687THF_VID_EN) & (1 << 2))) {
		FUNC0(&pdev->dev, "VID disabled, no VID function\n");
		goto exit;
	}

	/* Make sure the pins are configured for input */
	if (!(FUNC5(sio_data, W83687THF_VID_CFG) & (1 << 4))) {
		FUNC0(&pdev->dev, "VID configured as output, "
			"no VID function\n");
		goto exit;
	}

	res = FUNC5(sio_data, W83687THF_VID_DATA) & 0x3f;

exit:
	FUNC4(sio_data);
	return res;
}