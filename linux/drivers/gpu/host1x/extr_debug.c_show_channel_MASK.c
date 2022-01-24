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
struct output {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct host1x_channel {TYPE_2__ cdma; TYPE_1__* dev; } ;
struct host1x {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct host1x* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct host1x*,struct host1x_channel*,struct output*) ; 
 int /*<<< orphan*/  FUNC2 (struct host1x*,struct host1x_channel*,struct output*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct host1x_channel *ch, void *data, bool show_fifo)
{
	struct host1x *m = FUNC0(ch->dev->parent);
	struct output *o = data;

	FUNC3(&ch->cdma.lock);

	if (show_fifo)
		FUNC2(m, ch, o);

	FUNC1(m, ch, o);

	FUNC4(&ch->cdma.lock);

	return 0;
}