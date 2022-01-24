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
struct mxt_data {int /*<<< orphan*/  reset_completion; int /*<<< orphan*/  irq; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXT_COMMAND_RESET ; 
 int /*<<< orphan*/  MXT_RESET_INVALID_CHG ; 
 int /*<<< orphan*/  MXT_RESET_TIMEOUT ; 
 int /*<<< orphan*/  MXT_RESET_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mxt_data*) ; 
 int FUNC4 (struct mxt_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct mxt_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct mxt_data *data)
{
	struct device *dev = &data->client->dev;
	int ret = 0;

	FUNC0(dev, "Resetting device\n");

	FUNC1(data->irq);

	FUNC6(&data->reset_completion);

	ret = FUNC4(data, MXT_COMMAND_RESET, MXT_RESET_VALUE, false);
	if (ret)
		return ret;

	/* Ignore CHG line for 100ms after reset */
	FUNC2(MXT_RESET_INVALID_CHG);

	FUNC3(data);

	ret = FUNC5(data, &data->reset_completion,
				      MXT_RESET_TIMEOUT);
	if (ret)
		return ret;

	return 0;
}