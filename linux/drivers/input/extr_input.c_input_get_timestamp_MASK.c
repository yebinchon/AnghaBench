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
struct input_dev {int /*<<< orphan*/ * timestamp; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 size_t INPUT_CLK_MONO ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ktime_t *FUNC4(struct input_dev *dev)
{
	const ktime_t invalid_timestamp = FUNC3(0, 0);

	if (!FUNC1(dev->timestamp[INPUT_CLK_MONO], invalid_timestamp))
		FUNC0(dev, FUNC2());

	return dev->timestamp;
}