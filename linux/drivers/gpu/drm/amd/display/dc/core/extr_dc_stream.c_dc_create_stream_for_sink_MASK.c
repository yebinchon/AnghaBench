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
struct dc_stream_state {int /*<<< orphan*/  refcount; } ;
struct dc_sink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dc_stream_state*,struct dc_sink*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dc_stream_state* FUNC2 (int,int /*<<< orphan*/ ) ; 

struct dc_stream_state *FUNC3(
		struct dc_sink *sink)
{
	struct dc_stream_state *stream;

	if (sink == NULL)
		return NULL;

	stream = FUNC2(sizeof(struct dc_stream_state), GFP_KERNEL);
	if (stream == NULL)
		return NULL;

	FUNC0(stream, sink);

	FUNC1(&stream->refcount);

	return stream;
}