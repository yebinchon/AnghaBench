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
struct dc_stream_state {int /*<<< orphan*/ * out_transfer_func; int /*<<< orphan*/  sink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct dc_stream_state *stream)
{
	FUNC0(stream->sink);
	if (stream->out_transfer_func != NULL) {
		FUNC1(stream->out_transfer_func);
		stream->out_transfer_func = NULL;
	}
}