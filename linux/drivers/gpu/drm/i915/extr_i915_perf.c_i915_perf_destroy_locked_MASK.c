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
struct i915_perf_stream {scalar_t__ ctx; int /*<<< orphan*/  link; TYPE_1__* ops; scalar_t__ enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) (struct i915_perf_stream*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_perf_stream*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_perf_stream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_perf_stream*) ; 

__attribute__((used)) static void FUNC5(struct i915_perf_stream *stream)
{
	if (stream->enabled)
		FUNC1(stream);

	if (stream->ops->destroy)
		stream->ops->destroy(stream);

	FUNC3(&stream->link);

	if (stream->ctx)
		FUNC0(stream->ctx);

	FUNC2(stream);
}