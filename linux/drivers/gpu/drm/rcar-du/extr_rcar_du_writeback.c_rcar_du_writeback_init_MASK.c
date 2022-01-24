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
struct rcar_du_device {int /*<<< orphan*/  ddev; } ;
struct TYPE_2__ {int possible_crtcs; } ;
struct drm_writeback_connector {int /*<<< orphan*/  base; TYPE_1__ encoder; } ;
struct rcar_du_crtc {int /*<<< orphan*/  crtc; struct drm_writeback_connector writeback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct drm_writeback_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcar_du_wb_conn_funcs ; 
 int /*<<< orphan*/  rcar_du_wb_conn_helper_funcs ; 
 int /*<<< orphan*/  rcar_du_wb_enc_helper_funcs ; 
 int /*<<< orphan*/  writeback_formats ; 

int FUNC4(struct rcar_du_device *rcdu,
			   struct rcar_du_crtc *rcrtc)
{
	struct drm_writeback_connector *wb_conn = &rcrtc->writeback;

	wb_conn->encoder.possible_crtcs = 1 << FUNC2(&rcrtc->crtc);
	FUNC1(&wb_conn->base,
				 &rcar_du_wb_conn_helper_funcs);

	return FUNC3(rcdu->ddev, wb_conn,
					    &rcar_du_wb_conn_funcs,
					    &rcar_du_wb_enc_helper_funcs,
					    writeback_formats,
					    FUNC0(writeback_formats));
}