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
struct TYPE_4__ {int /*<<< orphan*/ * dma; } ;
struct TYPE_3__ {int /*<<< orphan*/ * dma; } ;
struct qup_i2c_dev {TYPE_2__ brx; int /*<<< orphan*/  dev; TYPE_1__ btx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct qup_i2c_dev*) ; 

__attribute__((used)) static int FUNC5(struct qup_i2c_dev *qup)
{
	int err;

	if (!qup->btx.dma) {
		qup->btx.dma = FUNC3(qup->dev, "tx");
		if (FUNC0(qup->btx.dma)) {
			err = FUNC1(qup->btx.dma);
			qup->btx.dma = NULL;
			FUNC2(qup->dev, "\n tx channel not available");
			return err;
		}
	}

	if (!qup->brx.dma) {
		qup->brx.dma = FUNC3(qup->dev, "rx");
		if (FUNC0(qup->brx.dma)) {
			FUNC2(qup->dev, "\n rx channel not available");
			err = FUNC1(qup->brx.dma);
			qup->brx.dma = NULL;
			FUNC4(qup);
			return err;
		}
	}
	return 0;
}