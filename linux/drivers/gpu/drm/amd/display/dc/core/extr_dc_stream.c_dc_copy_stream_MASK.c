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
struct dc_stream_state {int /*<<< orphan*/  refcount; TYPE_1__* ctx; int /*<<< orphan*/  stream_id; scalar_t__ out_transfer_func; scalar_t__ sink; } ;
struct TYPE_2__ {int /*<<< orphan*/  dc_stream_id_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct dc_stream_state* FUNC2 (struct dc_stream_state const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct dc_stream_state *FUNC4(const struct dc_stream_state *stream)
{
	struct dc_stream_state *new_stream;

	new_stream = FUNC2(stream, sizeof(struct dc_stream_state), GFP_KERNEL);
	if (!new_stream)
		return NULL;

	if (new_stream->sink)
		FUNC0(new_stream->sink);

	if (new_stream->out_transfer_func)
		FUNC1(new_stream->out_transfer_func);

	new_stream->stream_id = new_stream->ctx->dc_stream_id_count;
	new_stream->ctx->dc_stream_id_count++;

	FUNC3(&new_stream->refcount);

	return new_stream;
}