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
struct input_polled_dev {scalar_t__ poll_interval; int /*<<< orphan*/  (* poll ) (struct input_polled_dev*) ;int /*<<< orphan*/  (* open ) (struct input_polled_dev*) ;} ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct input_polled_dev* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_polled_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_polled_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_polled_dev*) ; 

__attribute__((used)) static int FUNC4(struct input_dev *input)
{
	struct input_polled_dev *dev = FUNC0(input);

	if (dev->open)
		dev->open(dev);

	/* Only start polling if polling is enabled */
	if (dev->poll_interval > 0) {
		dev->poll(dev);
		FUNC1(dev);
	}

	return 0;
}