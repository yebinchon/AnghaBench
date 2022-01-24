#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_3__* tg; } ;
struct pipe_ctx {TYPE_2__ stream_res; } ;
struct dc {int dummy; } ;
struct TYPE_12__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* lock_doublebuffer_disable ) (TYPE_3__*) ;int /*<<< orphan*/  (* wait_for_state ) (TYPE_3__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* unlock ) (TYPE_3__*) ;int /*<<< orphan*/  (* lock ) (TYPE_3__*) ;int /*<<< orphan*/  (* lock_doublebuffer_enable ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_STATE_VACTIVE ; 
 int /*<<< orphan*/  CRTC_STATE_VBLANK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

void FUNC7(
		struct dc *dc,
		struct pipe_ctx *pipe,
		bool lock)
{
	if (lock) {
		pipe->stream_res.tg->funcs->lock_doublebuffer_enable(
				pipe->stream_res.tg);
		pipe->stream_res.tg->funcs->lock(pipe->stream_res.tg);
	} else {
		pipe->stream_res.tg->funcs->unlock(pipe->stream_res.tg);
		pipe->stream_res.tg->funcs->wait_for_state(pipe->stream_res.tg,
				CRTC_STATE_VACTIVE);
		pipe->stream_res.tg->funcs->wait_for_state(pipe->stream_res.tg,
				CRTC_STATE_VBLANK);
		pipe->stream_res.tg->funcs->wait_for_state(pipe->stream_res.tg,
				CRTC_STATE_VACTIVE);
		pipe->stream_res.tg->funcs->lock_doublebuffer_disable(
				pipe->stream_res.tg);
	}
}