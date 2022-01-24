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
struct output {int dummy; } ;
struct host1x_channel {int dummy; } ;
struct host1x {TYPE_1__* info; } ;
struct TYPE_2__ {unsigned int nb_channels; } ;

/* Variables and functions */
 struct host1x_channel* FUNC0 (struct host1x*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct host1x_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct output*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct host1x*,struct output*) ; 
 int /*<<< orphan*/  FUNC4 (struct host1x_channel*,struct output*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct host1x*,struct output*) ; 

__attribute__((used)) static void FUNC6(struct host1x *m, struct output *o, bool show_fifo)
{
	unsigned int i;

	FUNC3(m, o);
	FUNC5(m, o);
	FUNC2(o, "---- channels ----\n");

	for (i = 0; i < m->info->nb_channels; ++i) {
		struct host1x_channel *ch = FUNC0(m, i);

		if (ch) {
			FUNC4(ch, o, show_fifo);
			FUNC1(ch);
		}
	}
}