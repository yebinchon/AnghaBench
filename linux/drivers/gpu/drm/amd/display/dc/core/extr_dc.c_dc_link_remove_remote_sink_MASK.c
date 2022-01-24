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
struct dc_sink {int dummy; } ;
struct dc_link {int sink_count; struct dc_sink** remote_sinks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct dc_sink*) ; 

void FUNC2(struct dc_link *link, struct dc_sink *sink)
{
	int i;

	if (!link->sink_count) {
		FUNC0();
		return;
	}

	for (i = 0; i < link->sink_count; i++) {
		if (link->remote_sinks[i] == sink) {
			FUNC1(sink);
			link->remote_sinks[i] = NULL;

			/* shrink array to remove empty place */
			while (i < link->sink_count - 1) {
				link->remote_sinks[i] = link->remote_sinks[i+1];
				i++;
			}
			link->remote_sinks[i] = NULL;
			link->sink_count--;
			return;
		}
	}
}