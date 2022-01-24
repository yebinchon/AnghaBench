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
struct platform_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ has_dma; } ;
struct atmel_tdes_dev {TYPE_1__ caps; int /*<<< orphan*/  queue_task; int /*<<< orphan*/  done_task; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENODEV ; 
 TYPE_2__ atmel_tdes ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_tdes_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_tdes_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_tdes_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct atmel_tdes_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct atmel_tdes_dev *tdes_dd;

	tdes_dd = FUNC4(pdev);
	if (!tdes_dd)
		return -ENODEV;
	FUNC5(&atmel_tdes.lock);
	FUNC3(&tdes_dd->list);
	FUNC6(&atmel_tdes.lock);

	FUNC2(tdes_dd);

	FUNC7(&tdes_dd->done_task);
	FUNC7(&tdes_dd->queue_task);

	if (tdes_dd->caps.has_dma)
		FUNC1(tdes_dd);

	FUNC0(tdes_dd);

	return 0;
}