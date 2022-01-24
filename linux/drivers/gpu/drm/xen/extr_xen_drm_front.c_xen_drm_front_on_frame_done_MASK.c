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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int num_connectors; } ;
struct xen_drm_front_info {TYPE_1__ cfg; struct xen_drm_front_drm_info* drm_info; } ;
struct xen_drm_front_drm_info {int /*<<< orphan*/ * pipeline; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(struct xen_drm_front_info *front_info,
				 int conn_idx, u64 fb_cookie)
{
	struct xen_drm_front_drm_info *drm_info = front_info->drm_info;

	if (FUNC0(conn_idx >= front_info->cfg.num_connectors))
		return;

	FUNC1(&drm_info->pipeline[conn_idx],
					fb_cookie);
}