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
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_SND ; 
 int /*<<< orphan*/  SND_BELL ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *dev)
{
	struct input_dev *input_dev = FUNC2(dev);

	FUNC0(input_dev);
	/* turn off the speaker */
	FUNC1(NULL, EV_SND, SND_BELL, 0);

	return 0;
}