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
struct dc_link {size_t sink_count; struct dc_sink** remote_sinks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t MAX_SINKS_PER_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct dc_sink*) ; 

__attribute__((used)) static bool FUNC2(struct dc_link *dc_link, struct dc_sink *sink)
{
	if (dc_link->sink_count >= MAX_SINKS_PER_LINK) {
		FUNC0();
		return false;
	}

	FUNC1(sink);

	dc_link->remote_sinks[dc_link->sink_count] = sink;
	dc_link->sink_count++;

	return true;
}