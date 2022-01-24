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
struct drv2667_data {TYPE_1__* client; int /*<<< orphan*/  regmap; int /*<<< orphan*/  work; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV2667_CTRL_2 ; 
 int /*<<< orphan*/  DRV2667_STANDBY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct drv2667_data* FUNC2 (struct input_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct input_dev *input)
{
	struct drv2667_data *haptics = FUNC2(input);
	int error;

	FUNC0(&haptics->work);

	error = FUNC3(haptics->regmap, DRV2667_CTRL_2,
				   DRV2667_STANDBY, DRV2667_STANDBY);
	if (error)
		FUNC1(&haptics->client->dev,
			"Failed to enter standby mode: %d\n", error);
}