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
struct input_dev {int /*<<< orphan*/  users; } ;
struct device {int dummy; } ;
struct cyapa {scalar_t__ operational; TYPE_2__* ops; struct input_dev* input; TYPE_1__* client; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_power_mode ) (struct cyapa*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CYAPA_PM_ACTIVE ; 
 int /*<<< orphan*/  CYAPA_PM_DEACTIVE ; 
 int /*<<< orphan*/  PWR_MODE_FULL_ACTIVE ; 
 int /*<<< orphan*/  PWR_MODE_OFF ; 
 int FUNC0 (struct cyapa*) ; 
 int FUNC1 (struct cyapa*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct cyapa*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cyapa*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct cyapa *cyapa)
{
	struct device *dev = &cyapa->client->dev;
	struct input_dev *input = cyapa->input;
	int error;

	if (FUNC5(dev))
		FUNC3(dev);

	/* Avoid command failures when TP was in OFF state. */
	if (cyapa->operational)
		cyapa->ops->set_power_mode(cyapa,
				PWR_MODE_FULL_ACTIVE, 0, CYAPA_PM_ACTIVE);

	error = FUNC1(cyapa);
	if (error)
		goto out;

	if (!input && cyapa->operational) {
		error = FUNC0(cyapa);
		if (error) {
			FUNC2(dev, "create input_dev instance failed: %d\n",
					error);
			goto out;
		}
	}

out:
	if (!input || !input->users) {
		/* Reset to power OFF state to save power when no user open. */
		if (cyapa->operational)
			cyapa->ops->set_power_mode(cyapa,
					PWR_MODE_OFF, 0, CYAPA_PM_DEACTIVE);
	} else if (!error && cyapa->operational) {
		/*
		 * Make sure only enable runtime PM when device is
		 * in operational mode and input->users > 0.
		 */
		FUNC9(dev);
		FUNC4(dev);

		FUNC6(dev);
		FUNC7(dev);
		FUNC8(dev);
	}

	return error;
}