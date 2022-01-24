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
struct rcar_du_crtc {int /*<<< orphan*/  vsp_pipe; TYPE_1__* vsp; } ;
struct TYPE_2__ {int /*<<< orphan*/  vsp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct rcar_du_crtc *crtc)
{
	FUNC0(crtc->vsp->vsp, crtc->vsp_pipe);
}