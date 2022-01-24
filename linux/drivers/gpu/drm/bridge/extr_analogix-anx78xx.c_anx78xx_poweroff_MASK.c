#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct anx78xx_platform_data {scalar_t__ dvdd10; int /*<<< orphan*/  gpiod_pd; int /*<<< orphan*/  gpiod_reset; } ;
struct anx78xx {int powered; struct anx78xx_platform_data pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct anx78xx *anx78xx)
{
	struct anx78xx_platform_data *pdata = &anx78xx->pdata;
	int err;

	if (FUNC1(!anx78xx->powered))
		return;

	FUNC2(pdata->gpiod_reset, 1);
	FUNC4(1000, 2000);

	FUNC2(pdata->gpiod_pd, 1);
	FUNC4(1000, 2000);

	if (pdata->dvdd10) {
		err = FUNC3(pdata->dvdd10);
		if (err) {
			FUNC0("Failed to disable DVDD10 regulator: %d\n",
				  err);
			return;
		}

		FUNC4(1000, 2000);
	}

	anx78xx->powered = false;
}