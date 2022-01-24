#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pipe_ctx {TYPE_1__* stream; int /*<<< orphan*/ * clock_source; } ;
struct TYPE_5__ {scalar_t__ signal; } ;

/* Variables and functions */
 scalar_t__ SIGNAL_TYPE_VIRTUAL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static bool FUNC5(
	const struct pipe_ctx *pipe_with_clk_src,
	const struct pipe_ctx *pipe)
{
	if (pipe_with_clk_src->clock_source == NULL)
		return false;

	if (pipe_with_clk_src->stream->signal == SIGNAL_TYPE_VIRTUAL)
		return false;

	if (FUNC0(pipe_with_clk_src->stream->signal) ||
		(FUNC0(pipe->stream->signal) &&
		!FUNC3(pipe_with_clk_src->stream,
				     pipe->stream)))
		return false;

	if (FUNC2(pipe_with_clk_src->stream->signal)
			&& FUNC1(pipe->stream->signal))
		return false;

	if (FUNC2(pipe->stream->signal)
			&& FUNC1(pipe_with_clk_src->stream->signal))
		return false;

	if (!FUNC4(
			pipe_with_clk_src->stream, pipe->stream))
		return false;

	return true;
}