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
struct cpcap_led {int powered; int /*<<< orphan*/  dev; int /*<<< orphan*/  vdd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cpcap_led *led, bool status)
{
	int err;

	if (status == led->powered)
		return 0;

	if (status)
		err = FUNC2(led->vdd);
	else
		err = FUNC1(led->vdd);

	if (err) {
		FUNC0(led->dev, "regulator failure: %d", err);
		return err;
	}

	led->powered = status;

	return 0;
}