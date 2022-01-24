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
struct ml_effect_state {unsigned long play_at; int /*<<< orphan*/  flags; } ;
struct ml_device {int /*<<< orphan*/  timer; struct ml_effect_state* states; } ;

/* Variables and functions */
 int /*<<< orphan*/  FF_EFFECT_PLAYING ; 
 int /*<<< orphan*/  FF_EFFECT_STARTED ; 
 int FF_MEMLESS_EFFECTS ; 
 unsigned long FUNC0 (struct ml_effect_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct ml_device *ml)
{
	struct ml_effect_state *state;
	unsigned long now = jiffies;
	unsigned long earliest = 0;
	unsigned long next_at;
	int events = 0;
	int i;

	FUNC3("calculating next timer\n");

	for (i = 0; i < FF_MEMLESS_EFFECTS; i++) {

		state = &ml->states[i];

		if (!FUNC4(FF_EFFECT_STARTED, &state->flags))
			continue;

		if (FUNC4(FF_EFFECT_PLAYING, &state->flags))
			next_at = FUNC0(state);
		else
			next_at = state->play_at;

		if (FUNC6(now, next_at) &&
		    (++events == 1 || FUNC5(next_at, earliest)))
			earliest = next_at;
	}

	if (!events) {
		FUNC3("no actions\n");
		FUNC1(&ml->timer);
	} else {
		FUNC3("timer set\n");
		FUNC2(&ml->timer, earliest);
	}
}