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
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; struct device dev; } ;
struct cyapa {int /*<<< orphan*/  state_sync_lock; TYPE_1__* ops; scalar_t__ operational; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_power_mode ) (struct cyapa*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CYAPA_PM_DEACTIVE ; 
 int /*<<< orphan*/  PWR_MODE_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct cyapa* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct cyapa*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct input_dev *input)
{
	struct cyapa *cyapa = FUNC1(input);
	struct i2c_client *client = cyapa->client;
	struct device *dev = &cyapa->client->dev;

	FUNC2(&cyapa->state_sync_lock);

	FUNC0(client->irq);
	if (FUNC5(dev))
		FUNC4(dev);
	FUNC6(dev);

	if (cyapa->operational)
		cyapa->ops->set_power_mode(cyapa,
				PWR_MODE_OFF, 0, CYAPA_PM_DEACTIVE);

	FUNC3(&cyapa->state_sync_lock);
}