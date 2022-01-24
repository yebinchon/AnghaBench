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
struct msc {int dummy; } ;
struct intel_th_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct msc* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_th_device*) ; 
 int FUNC3 (struct msc*) ; 

__attribute__((used)) static void FUNC4(struct intel_th_device *thdev)
{
	struct msc *msc = FUNC1(&thdev->dev);
	int ret;

	FUNC2(thdev);

	/*
	 * Buffers should not be used at this point except if the
	 * output character device is still open and the parent
	 * device gets detached from its bus, which is a FIXME.
	 */
	ret = FUNC3(msc);
	FUNC0(ret);
}