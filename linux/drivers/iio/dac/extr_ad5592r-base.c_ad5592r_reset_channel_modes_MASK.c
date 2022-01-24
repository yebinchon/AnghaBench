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
struct ad5592r_state {int /*<<< orphan*/ * channel_modes; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CH_MODE_UNUSED ; 
 int FUNC1 (struct ad5592r_state*) ; 

__attribute__((used)) static int FUNC2(struct ad5592r_state *st)
{
	int i;

	for (i = 0; i < FUNC0(st->channel_modes); i++)
		st->channel_modes[i] = CH_MODE_UNUSED;

	return FUNC1(st);
}