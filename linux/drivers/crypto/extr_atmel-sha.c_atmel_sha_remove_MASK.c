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
struct atmel_sha_dev {int /*<<< orphan*/  iclk; TYPE_1__ caps; int /*<<< orphan*/  done_task; int /*<<< orphan*/  queue_task; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENODEV ; 
 TYPE_2__ atmel_sha ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_sha_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_sha_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct atmel_sha_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct atmel_sha_dev *sha_dd;

	sha_dd = FUNC4(pdev);
	if (!sha_dd)
		return -ENODEV;
	FUNC5(&atmel_sha.lock);
	FUNC3(&sha_dd->list);
	FUNC6(&atmel_sha.lock);

	FUNC1(sha_dd);

	FUNC7(&sha_dd->queue_task);
	FUNC7(&sha_dd->done_task);

	if (sha_dd->caps.has_dma)
		FUNC0(sha_dd);

	FUNC2(sha_dd->iclk);

	return 0;
}