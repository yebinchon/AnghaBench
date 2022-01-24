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
struct parport {int dummy; } ;
struct input_dev {int dummy; } ;
struct db9 {int /*<<< orphan*/  mutex; TYPE_1__* pd; int /*<<< orphan*/  timer; int /*<<< orphan*/  used; } ;
struct TYPE_2__ {struct parport* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct db9* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct parport*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct parport*,int) ; 

__attribute__((used)) static void FUNC7(struct input_dev *dev)
{
	struct db9 *db9 = FUNC1(dev);
	struct parport *port = db9->pd->port;

	FUNC2(&db9->mutex);
	if (!--db9->used) {
		FUNC0(&db9->timer);
		FUNC6(port, 0x00);
		FUNC4(port);
		FUNC5(db9->pd);
	}
	FUNC3(&db9->mutex);
}