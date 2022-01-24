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
struct dc_stream_state {scalar_t__ dpms_off; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dc_stream_state*,struct dc_stream_state*) ; 
 scalar_t__ FUNC1 (struct dc_stream_state*,struct dc_stream_state*) ; 
 scalar_t__ FUNC2 (struct dc_stream_state*,struct dc_stream_state*) ; 

__attribute__((used)) static bool FUNC3(
	struct dc_stream_state *stream_a, struct dc_stream_state *stream_b)
{
	if (stream_a == stream_b)
		return true;

	if (stream_a == NULL || stream_b == NULL)
		return false;

	if (FUNC1(stream_a, stream_b))
		return false;

	if (FUNC0(stream_a, stream_b))
		return false;

	if (stream_a->dpms_off != stream_b->dpms_off)
		return false;

	if (FUNC2(stream_a, stream_b))
		return false;

	return true;
}