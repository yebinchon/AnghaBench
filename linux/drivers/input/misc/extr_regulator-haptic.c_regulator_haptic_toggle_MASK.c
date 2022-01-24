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
struct regulator_haptic {int active; int /*<<< orphan*/  dev; int /*<<< orphan*/  regulator; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct regulator_haptic *haptic, bool on)
{
	int error;

	if (haptic->active != on) {

		error = on ? FUNC2(haptic->regulator) :
			     FUNC1(haptic->regulator);
		if (error) {
			FUNC0(haptic->dev,
				"failed to switch regulator %s: %d\n",
				on ? "on" : "off", error);
			return error;
		}

		haptic->active = on;
	}

	return 0;
}