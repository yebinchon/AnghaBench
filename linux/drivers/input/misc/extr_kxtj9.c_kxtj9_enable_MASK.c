#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  g_range; } ;
struct kxtj9_data {TYPE_2__* client; int /*<<< orphan*/  last_poll_interval; int /*<<< orphan*/  ctrl_reg1; TYPE_1__ pdata; int /*<<< orphan*/  int_ctrl; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_REG1 ; 
 int /*<<< orphan*/  INT_CTRL1 ; 
 int /*<<< orphan*/  INT_REL ; 
 int /*<<< orphan*/  PC1_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kxtj9_data*) ; 
 int FUNC4 (struct kxtj9_data*) ; 
 int FUNC5 (struct kxtj9_data*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct kxtj9_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct kxtj9_data *tj9)
{
	int err;

	err = FUNC4(tj9);
	if (err < 0)
		return err;

	/* ensure that PC1 is cleared before updating control registers */
	err = FUNC2(tj9->client, CTRL_REG1, 0);
	if (err < 0)
		return err;

	/* only write INT_CTRL_REG1 if in irq mode */
	if (tj9->client->irq) {
		err = FUNC2(tj9->client,
						INT_CTRL1, tj9->int_ctrl);
		if (err < 0)
			return err;
	}

	err = FUNC5(tj9, tj9->pdata.g_range);
	if (err < 0)
		return err;

	/* turn on outputs */
	tj9->ctrl_reg1 |= PC1_ON;
	err = FUNC2(tj9->client, CTRL_REG1, tj9->ctrl_reg1);
	if (err < 0)
		return err;

	err = FUNC6(tj9, tj9->last_poll_interval);
	if (err < 0)
		return err;

	/* clear initial interrupt if in irq mode */
	if (tj9->client->irq) {
		err = FUNC1(tj9->client, INT_REL);
		if (err < 0) {
			FUNC0(&tj9->client->dev,
				"error clearing interrupt: %d\n", err);
			goto fail;
		}
	}

	return 0;

fail:
	FUNC3(tj9);
	return err;
}