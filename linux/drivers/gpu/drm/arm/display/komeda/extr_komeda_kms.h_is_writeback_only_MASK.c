#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_connector {int dummy; } ;
struct TYPE_3__ {struct drm_connector base; } ;
struct komeda_wb_connector {TYPE_1__ base; } ;
struct drm_crtc_state {scalar_t__ connector_mask; int /*<<< orphan*/  crtc; } ;
struct TYPE_4__ {struct komeda_wb_connector* wb_conn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(struct drm_crtc_state *st)
{
	struct komeda_wb_connector *wb_conn = FUNC2(st->crtc)->wb_conn;
	struct drm_connector *conn = wb_conn ? &wb_conn->base.base : NULL;

	return conn && (st->connector_mask == FUNC0(FUNC1(conn)));
}