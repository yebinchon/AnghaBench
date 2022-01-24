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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct grts_state {int /*<<< orphan*/  iio_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct grts_state* FUNC2 (struct input_dev*) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev)
{
	int error;
	struct grts_state *st = FUNC2(dev);

	error = FUNC1(st->iio_cb);
	if (error) {
		FUNC0(dev->dev.parent, "failed to start callback buffer.\n");
		return error;
	}
	return 0;
}