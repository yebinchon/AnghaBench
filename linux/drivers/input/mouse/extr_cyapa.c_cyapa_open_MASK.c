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
struct cyapa {int /*<<< orphan*/  state_sync_lock; scalar_t__ operational; TYPE_1__* ops; struct i2c_client* client; } ;
struct TYPE_2__ {int (* set_power_mode ) (struct cyapa*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CYAPA_PM_ACTIVE ; 
 int EAGAIN ; 
 int /*<<< orphan*/  PWR_MODE_FULL_ACTIVE ; 
 int FUNC0 (struct cyapa*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cyapa* FUNC3 (struct input_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int FUNC12 (struct cyapa*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct input_dev *input)
{
	struct cyapa *cyapa = FUNC3(input);
	struct i2c_client *client = cyapa->client;
	struct device *dev = &client->dev;
	int error;

	error = FUNC4(&cyapa->state_sync_lock);
	if (error)
		return error;

	if (cyapa->operational) {
		/*
		 * though failed to set active power mode,
		 * but still may be able to work in lower scan rate
		 * when in operational mode.
		 */
		error = cyapa->ops->set_power_mode(cyapa,
				PWR_MODE_FULL_ACTIVE, 0, CYAPA_PM_ACTIVE);
		if (error) {
			FUNC1(dev, "set active power failed: %d\n", error);
			goto out;
		}
	} else {
		error = FUNC0(cyapa);
		if (error || !cyapa->operational) {
			error = error ? error : -EAGAIN;
			goto out;
		}
	}

	FUNC2(client->irq);
	if (!FUNC7(dev)) {
		FUNC11(dev);
		FUNC6(dev);
	}

	FUNC8(dev);
	FUNC9(dev);
	FUNC10(dev);
out:
	FUNC5(&cyapa->state_sync_lock);
	return error;
}