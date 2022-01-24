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
typedef  int /*<<< orphan*/  uint64_t ;
struct exynos_drm_ipp_task {struct drm_pending_exynos_ipp_event* event; TYPE_1__* ipp; } ;
struct TYPE_6__ {int length; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {TYPE_3__ base; int /*<<< orphan*/  user_data; } ;
struct drm_pending_exynos_ipp_event {TYPE_2__ event; int /*<<< orphan*/  base; } ;
struct drm_file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  drm_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_EXYNOS_IPP_EVENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct drm_file*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_pending_exynos_ipp_event*) ; 
 struct drm_pending_exynos_ipp_event* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct exynos_drm_ipp_task *task,
				 struct drm_file *file_priv, uint64_t user_data)
{
	struct drm_pending_exynos_ipp_event *e = NULL;
	int ret;

	e = FUNC2(sizeof(*e), GFP_KERNEL);
	if (!e)
		return -ENOMEM;

	e->event.base.type = DRM_EXYNOS_IPP_EVENT;
	e->event.base.length = sizeof(e->event);
	e->event.user_data = user_data;

	ret = FUNC0(task->ipp->drm_dev, file_priv, &e->base,
				     &e->event.base);
	if (ret)
		goto free;

	task->event = e;
	return 0;
free:
	FUNC1(e);
	return ret;
}