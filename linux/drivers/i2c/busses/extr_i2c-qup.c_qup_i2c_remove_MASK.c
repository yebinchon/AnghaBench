#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dma; } ;
struct TYPE_3__ {int /*<<< orphan*/  dma; } ;
struct qup_i2c_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  adap; int /*<<< orphan*/  irq; TYPE_2__ brx; TYPE_1__ btx; scalar_t__ is_dma; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct qup_i2c_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qup_i2c_dev*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct qup_i2c_dev *qup = FUNC3(pdev);

	if (qup->is_dma) {
		FUNC1(qup->btx.dma);
		FUNC1(qup->brx.dma);
	}

	FUNC0(qup->irq);
	FUNC6(qup);
	FUNC2(&qup->adap);
	FUNC4(qup->dev);
	FUNC5(qup->dev);
	return 0;
}