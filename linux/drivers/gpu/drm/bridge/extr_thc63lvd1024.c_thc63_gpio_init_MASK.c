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
struct thc63_dev {void* pdwn; int /*<<< orphan*/  dev; void* oe; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct thc63_dev *thc63)
{
	thc63->oe = FUNC3(thc63->dev, "oe", GPIOD_OUT_LOW);
	if (FUNC0(thc63->oe)) {
		FUNC2(thc63->dev, "Unable to get \"oe-gpios\": %ld\n",
			FUNC1(thc63->oe));
		return FUNC1(thc63->oe);
	}

	thc63->pdwn = FUNC3(thc63->dev, "powerdown",
					      GPIOD_OUT_HIGH);
	if (FUNC0(thc63->pdwn)) {
		FUNC2(thc63->dev, "Unable to get \"powerdown-gpios\": %ld\n",
			FUNC1(thc63->pdwn));
		return FUNC1(thc63->pdwn);
	}

	return 0;
}