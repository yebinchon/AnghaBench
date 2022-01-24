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
struct walkera_dev {int /*<<< orphan*/  parport; int /*<<< orphan*/  pardevice; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 struct walkera_dev* FUNC0 (struct input_dev*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev)
{
	struct walkera_dev *w = FUNC0(dev);

	if (FUNC1(w->pardevice))
		return -EBUSY;

	FUNC2(w->parport);
	return 0;
}