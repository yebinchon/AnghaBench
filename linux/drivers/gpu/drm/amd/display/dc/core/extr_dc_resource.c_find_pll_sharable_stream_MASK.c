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
struct dc_stream_state {TYPE_1__* link; int /*<<< orphan*/  signal; } ;
struct dc_state {int stream_count; struct dc_stream_state** streams; } ;
struct TYPE_2__ {scalar_t__ connector_signal; } ;

/* Variables and functions */
 scalar_t__ SIGNAL_TYPE_VIRTUAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dc_stream_state*,struct dc_stream_state*) ; 

__attribute__((used)) static struct dc_stream_state *FUNC2(
		struct dc_stream_state *stream_needs_pll,
		struct dc_state *context)
{
	int i;

	for (i = 0; i < context->stream_count; i++) {
		struct dc_stream_state *stream_has_pll = context->streams[i];

		/* We are looking for non dp, non virtual stream */
		if (FUNC1(
			stream_needs_pll, stream_has_pll)
			&& !FUNC0(stream_has_pll->signal)
			&& stream_has_pll->link->connector_signal
			!= SIGNAL_TYPE_VIRTUAL)
			return stream_has_pll;

	}

	return NULL;
}