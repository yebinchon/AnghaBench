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
struct parport {int dummy; } ;
struct input_dev {int dummy; } ;
struct db9 {size_t mode; int /*<<< orphan*/  mutex; int /*<<< orphan*/  timer; TYPE_1__* pd; int /*<<< orphan*/  used; } ;
struct TYPE_4__ {scalar_t__ reverse; } ;
struct TYPE_3__ {struct parport* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  DB9_NORMAL ; 
 scalar_t__ DB9_REFRESH_TIME ; 
 TYPE_2__* db9_modes ; 
 struct db9* FUNC0 (struct input_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct parport*) ; 
 int /*<<< orphan*/  FUNC6 (struct parport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct parport*,int) ; 

__attribute__((used)) static int FUNC8(struct input_dev *dev)
{
	struct db9 *db9 = FUNC0(dev);
	struct parport *port = db9->pd->port;
	int err;

	err = FUNC2(&db9->mutex);
	if (err)
		return err;

	if (!db9->used++) {
		FUNC4(db9->pd);
		FUNC7(port, 0xff);
		if (db9_modes[db9->mode].reverse) {
			FUNC5(port);
			FUNC6(port, DB9_NORMAL);
		}
		FUNC1(&db9->timer, jiffies + DB9_REFRESH_TIME);
	}

	FUNC3(&db9->mutex);
	return 0;
}