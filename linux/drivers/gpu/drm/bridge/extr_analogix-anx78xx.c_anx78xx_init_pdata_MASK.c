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
struct device {int dummy; } ;
struct anx78xx_platform_data {void* gpiod_reset; void* gpiod_pd; void* gpiod_hpd; void* dvdd10; } ;
struct anx78xx {TYPE_1__* client; struct anx78xx_platform_data pdata; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,char*) ; 

__attribute__((used)) static int FUNC6(struct anx78xx *anx78xx)
{
	struct anx78xx_platform_data *pdata = &anx78xx->pdata;
	struct device *dev = &anx78xx->client->dev;

	/* 1.0V digital core power regulator  */
	pdata->dvdd10 = FUNC5(dev, "dvdd10");
	if (FUNC1(pdata->dvdd10)) {
		FUNC0("DVDD10 regulator not found\n");
		return FUNC2(pdata->dvdd10);
	}

	/* GPIO for HPD */
	pdata->gpiod_hpd = FUNC4(dev, "hpd", GPIOD_IN);
	if (FUNC1(pdata->gpiod_hpd))
		return FUNC2(pdata->gpiod_hpd);

	/* GPIO for chip power down */
	pdata->gpiod_pd = FUNC4(dev, "pd", GPIOD_OUT_HIGH);
	if (FUNC1(pdata->gpiod_pd))
		return FUNC2(pdata->gpiod_pd);

	/* GPIO for chip reset */
	pdata->gpiod_reset = FUNC4(dev, "reset", GPIOD_OUT_LOW);

	return FUNC3(pdata->gpiod_reset);
}