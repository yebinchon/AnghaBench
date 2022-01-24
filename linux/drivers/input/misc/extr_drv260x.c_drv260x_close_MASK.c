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
struct drv260x_data {int /*<<< orphan*/  enable_gpio; TYPE_1__* client; int /*<<< orphan*/  regmap; int /*<<< orphan*/  work; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV260X_MODE ; 
 int /*<<< orphan*/  DRV260X_STANDBY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drv260x_data* FUNC3 (struct input_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct input_dev *input)
{
	struct drv260x_data *haptics = FUNC3(input);
	int error;

	FUNC0(&haptics->work);

	error = FUNC4(haptics->regmap, DRV260X_MODE, DRV260X_STANDBY);
	if (error)
		FUNC1(&haptics->client->dev,
			"Failed to enter standby mode: %d\n", error);

	FUNC2(haptics->enable_gpio, 0);
}