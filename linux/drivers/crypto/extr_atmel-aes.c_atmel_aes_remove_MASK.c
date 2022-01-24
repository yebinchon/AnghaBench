#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct atmel_aes_dev {int /*<<< orphan*/  iclk; int /*<<< orphan*/  queue_task; int /*<<< orphan*/  done_task; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENODEV ; 
 TYPE_1__ atmel_aes ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_aes_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_aes_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_aes_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct atmel_aes_dev* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct atmel_aes_dev *aes_dd;

	aes_dd = FUNC5(pdev);
	if (!aes_dd)
		return -ENODEV;
	FUNC6(&atmel_aes.lock);
	FUNC4(&aes_dd->list);
	FUNC7(&atmel_aes.lock);

	FUNC2(aes_dd);

	FUNC8(&aes_dd->done_task);
	FUNC8(&aes_dd->queue_task);

	FUNC1(aes_dd);
	FUNC0(aes_dd);

	FUNC3(aes_dd->iclk);

	return 0;
}