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
struct drv2667_data {int frequency; int /*<<< orphan*/  regmap; TYPE_1__* client; int /*<<< orphan*/  page; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRV2667_PAGE ; 
 int /*<<< orphan*/  DRV2667_PAGE_0 ; 
 int /*<<< orphan*/  DRV2667_PAGE_1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  drv2667_init_regs ; 
 int /*<<< orphan*/  drv2667_page1_init ; 
 int FUNC2 (struct drv2667_data*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct drv2667_data *haptics)
{
	int error;

	/* Set default haptic frequency to 195Hz on Page 1*/
	haptics->frequency = 195;
	haptics->page = DRV2667_PAGE_1;

	error = FUNC3(haptics->regmap,
				      drv2667_init_regs,
				      FUNC0(drv2667_init_regs));
	if (error) {
		FUNC1(&haptics->client->dev,
			"Failed to write init registers: %d\n",
			error);
		return error;
	}

	error = FUNC4(haptics->regmap, DRV2667_PAGE, haptics->page);
	if (error) {
		FUNC1(&haptics->client->dev, "Failed to set page: %d\n",
			error);
		goto error_out;
	}

	error = FUNC2(haptics);
	if (error)
		goto error_page;

	error = FUNC3(haptics->regmap,
				      drv2667_page1_init,
				      FUNC0(drv2667_page1_init));
	if (error) {
		FUNC1(&haptics->client->dev,
			"Failed to write page registers: %d\n",
			error);
		return error;
	}

	error = FUNC4(haptics->regmap, DRV2667_PAGE, DRV2667_PAGE_0);
	return error;

error_page:
	FUNC4(haptics->regmap, DRV2667_PAGE, DRV2667_PAGE_0);
error_out:
	return error;
}