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
struct hifn_device {scalar_t__ active; scalar_t__ started; } ;

/* Variables and functions */
 int FUNC0 (struct hifn_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hifn_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hifn_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hifn_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hifn_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hifn_device*) ; 

__attribute__((used)) static int FUNC6(struct hifn_device *dev)
{
	int err;

	dev->started = dev->active = 0;
	FUNC4(dev, 1);

	err = FUNC0(dev);
	if (err)
		return err;

	FUNC5(dev);

	FUNC1(dev);

	FUNC3(dev);

	FUNC2(dev);

	return 0;
}