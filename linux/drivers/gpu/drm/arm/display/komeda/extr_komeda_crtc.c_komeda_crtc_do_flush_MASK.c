#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct drm_connector_state* state; } ;
struct TYPE_10__ {TYPE_3__ base; } ;
struct komeda_wb_connector {TYPE_5__ base; } ;
struct komeda_pipeline {int /*<<< orphan*/  id; } ;
struct komeda_dev {TYPE_4__* funcs; } ;
struct komeda_crtc_state {int /*<<< orphan*/  active_pipes; int /*<<< orphan*/  affected_pipes; } ;
struct TYPE_7__ {TYPE_1__* dev; } ;
struct komeda_crtc {struct komeda_wb_connector* wb_conn; struct komeda_pipeline* slave; struct komeda_pipeline* master; TYPE_2__ base; } ;
struct drm_crtc_state {int /*<<< orphan*/  state; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;
struct drm_connector_state {scalar_t__ writeback_job; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* flush ) (struct komeda_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {struct komeda_dev* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,struct drm_connector_state*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct komeda_pipeline*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct komeda_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct komeda_crtc* FUNC6 (struct drm_crtc*) ; 
 struct komeda_crtc_state* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct drm_crtc *crtc,
		     struct drm_crtc_state *old)
{
	struct komeda_crtc *kcrtc = FUNC6(crtc);
	struct komeda_crtc_state *kcrtc_st = FUNC7(crtc->state);
	struct komeda_dev *mdev = kcrtc->base.dev->dev_private;
	struct komeda_pipeline *master = kcrtc->master;
	struct komeda_pipeline *slave = kcrtc->slave;
	struct komeda_wb_connector *wb_conn = kcrtc->wb_conn;
	struct drm_connector_state *conn_st;

	FUNC0("CRTC%d_FLUSH: active_pipes: 0x%x, affected: 0x%x.\n",
			 FUNC1(crtc),
			 kcrtc_st->active_pipes, kcrtc_st->affected_pipes);

	/* step 1: update the pipeline/component state to HW */
	if (FUNC3(master->id, kcrtc_st->affected_pipes))
		FUNC4(master, old->state);

	if (slave && FUNC3(slave->id, kcrtc_st->affected_pipes))
		FUNC4(slave, old->state);

	conn_st = wb_conn ? wb_conn->base.base.state : NULL;
	if (conn_st && conn_st->writeback_job)
		FUNC2(&wb_conn->base, conn_st);

	/* step 2: notify the HW to kickoff the update */
	mdev->funcs->flush(mdev, master->id, kcrtc_st->active_pipes);
}