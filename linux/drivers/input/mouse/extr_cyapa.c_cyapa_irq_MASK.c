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
struct device {int dummy; } ;
struct cyapa {int /*<<< orphan*/  state_sync_lock; TYPE_2__* ops; scalar_t__ operational; int /*<<< orphan*/  input; TYPE_1__* client; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int (* irq_handler ) (struct cyapa*) ;int /*<<< orphan*/  (* sort_empty_output_data ) (struct cyapa*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;scalar_t__ (* irq_cmd_handler ) (struct cyapa*) ;} ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct cyapa*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct cyapa*) ; 
 int /*<<< orphan*/  FUNC9 (struct cyapa*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct cyapa*) ; 
 int /*<<< orphan*/  FUNC11 (struct cyapa*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *dev_id)
{
	struct cyapa *cyapa = dev_id;
	struct device *dev = &cyapa->client->dev;
	int error;

	if (FUNC1(dev))
		FUNC7(dev, 0);

	/* Interrupt event can be caused by host command to trackpad device. */
	if (cyapa->ops->irq_cmd_handler(cyapa)) {
		/*
		 * Interrupt event maybe from trackpad device input reporting.
		 */
		if (!cyapa->input) {
			/*
			 * Still in probing or in firmware image
			 * updating or reading.
			 */
			cyapa->ops->sort_empty_output_data(cyapa,
					NULL, NULL, NULL);
			goto out;
		}

		if (cyapa->operational) {
			error = cyapa->ops->irq_handler(cyapa);

			/*
			 * Apply runtime power management to touch report event
			 * except the events caused by the command responses.
			 * Note:
			 * It will introduce about 20~40 ms additional delay
			 * time in receiving for first valid touch report data.
			 * The time is used to execute device runtime resume
			 * process.
			 */
			FUNC4(dev);
			FUNC5(dev);
			FUNC6(dev);
		}

		if (!cyapa->operational || error) {
			if (!FUNC2(&cyapa->state_sync_lock)) {
				cyapa->ops->sort_empty_output_data(cyapa,
					NULL, NULL, NULL);
				goto out;
			}
			FUNC0(cyapa);
			FUNC3(&cyapa->state_sync_lock);
		}
	}

out:
	return IRQ_HANDLED;
}