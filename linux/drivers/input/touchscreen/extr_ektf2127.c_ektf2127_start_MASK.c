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
struct input_dev {int dummy; } ;
struct ektf2127_ts {int /*<<< orphan*/  power_gpios; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct ektf2127_ts* FUNC2 (struct input_dev*) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev)
{
	struct ektf2127_ts *ts = FUNC2(dev);

	FUNC0(ts->client->irq);
	FUNC1(ts->power_gpios, 1);

	return 0;
}