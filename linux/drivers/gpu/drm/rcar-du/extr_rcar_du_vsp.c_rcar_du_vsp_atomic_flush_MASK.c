#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct vsp1_du_atomic_pipe_config {int /*<<< orphan*/  writeback; int /*<<< orphan*/  crc; TYPE_1__ member_0; } ;
struct rcar_du_crtc_state {int /*<<< orphan*/  crc; } ;
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
struct rcar_du_crtc {int /*<<< orphan*/  vsp_pipe; TYPE_3__* vsp; TYPE_2__ crtc; } ;
struct TYPE_6__ {int /*<<< orphan*/  vsp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rcar_du_crtc*,int /*<<< orphan*/ *) ; 
 struct rcar_du_crtc_state* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vsp1_du_atomic_pipe_config*) ; 

void FUNC3(struct rcar_du_crtc *crtc)
{
	struct vsp1_du_atomic_pipe_config cfg = { 0, };
	struct rcar_du_crtc_state *state;

	state = FUNC1(crtc->crtc.state);
	cfg.crc = state->crc;

	FUNC0(crtc, &cfg.writeback);

	FUNC2(crtc->vsp->vsp, crtc->vsp_pipe, &cfg);
}