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
struct led_trigger {char const* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct led_trigger*) ; 
 struct led_trigger* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct led_trigger*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 

void FUNC4(const char *name, struct led_trigger **tp)
{
	struct led_trigger *trig;
	int err;

	trig = FUNC1(sizeof(struct led_trigger), GFP_KERNEL);

	if (trig) {
		trig->name = name;
		err = FUNC2(trig);
		if (err < 0) {
			FUNC0(trig);
			trig = NULL;
			FUNC3("LED trigger %s failed to register (%d)\n",
				name, err);
		}
	} else {
		FUNC3("LED trigger %s failed to register (no memory)\n",
			name);
	}
	*tp = trig;
}