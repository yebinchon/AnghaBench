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
struct rcar_du_wb_job {int /*<<< orphan*/  sg_tables; } ;
struct rcar_du_crtc {int /*<<< orphan*/  vsp; } ;
struct drm_writeback_job {struct rcar_du_wb_job* priv; int /*<<< orphan*/  fb; } ;
struct drm_writeback_connector {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct rcar_du_wb_job*) ; 
 struct rcar_du_wb_job* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rcar_du_crtc* FUNC3 (struct drm_writeback_connector*) ; 

__attribute__((used)) static int FUNC4(struct drm_writeback_connector *connector,
				  struct drm_writeback_job *job)
{
	struct rcar_du_crtc *rcrtc = FUNC3(connector);
	struct rcar_du_wb_job *rjob;
	int ret;

	if (!job->fb)
		return 0;

	rjob = FUNC1(sizeof(*rjob), GFP_KERNEL);
	if (!rjob)
		return -ENOMEM;

	/* Map the framebuffer to the VSP. */
	ret = FUNC2(rcrtc->vsp, job->fb, rjob->sg_tables);
	if (ret < 0) {
		FUNC0(rjob);
		return ret;
	}

	job->priv = rjob;
	return 0;
}