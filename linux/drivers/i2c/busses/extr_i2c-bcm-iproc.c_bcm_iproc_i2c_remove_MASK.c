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
struct platform_device {int dummy; } ;
struct bcm_iproc_i2c_dev {int /*<<< orphan*/  adapter; scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_iproc_i2c_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_iproc_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_iproc_i2c_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm_iproc_i2c_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct bcm_iproc_i2c_dev *iproc_i2c = FUNC4(pdev);

	if (iproc_i2c->irq) {
		/*
		 * Make sure there's no pending interrupt when we remove the
		 * adapter
		 */
		FUNC3(iproc_i2c, IE_OFFSET, 0);
		FUNC2(iproc_i2c, IE_OFFSET);
		FUNC5(iproc_i2c->irq);
	}

	FUNC1(&iproc_i2c->adapter);
	FUNC0(iproc_i2c, false);

	return 0;
}