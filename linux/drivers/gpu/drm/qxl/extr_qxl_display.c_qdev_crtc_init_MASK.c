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
struct qxl_device {int dummy; } ;
struct qxl_crtc {int index; int /*<<< orphan*/  base; } ;
struct drm_plane {int index; int /*<<< orphan*/  base; } ;
struct drm_device {struct qxl_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_PLANE_TYPE_CURSOR ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_PRIMARY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct qxl_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ *,struct qxl_crtc*,struct qxl_crtc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qxl_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct qxl_crtc*) ; 
 struct qxl_crtc* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct qxl_crtc* FUNC6 (struct qxl_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qxl_crtc_funcs ; 
 int /*<<< orphan*/  qxl_crtc_helper_funcs ; 

__attribute__((used)) static int FUNC7(struct drm_device *dev, int crtc_id)
{
	struct qxl_crtc *qxl_crtc;
	struct drm_plane *primary, *cursor;
	struct qxl_device *qdev = dev->dev_private;
	int r;

	qxl_crtc = FUNC5(sizeof(struct qxl_crtc), GFP_KERNEL);
	if (!qxl_crtc)
		return -ENOMEM;

	primary = FUNC6(qdev, 1 << crtc_id, DRM_PLANE_TYPE_PRIMARY);
	if (FUNC0(primary)) {
		r = -ENOMEM;
		goto free_mem;
	}

	cursor = FUNC6(qdev, 1 << crtc_id, DRM_PLANE_TYPE_CURSOR);
	if (FUNC0(cursor)) {
		r = -ENOMEM;
		goto clean_primary;
	}

	r = FUNC2(dev, &qxl_crtc->base, primary, cursor,
				      &qxl_crtc_funcs, NULL);
	if (r)
		goto clean_cursor;

	qxl_crtc->index = crtc_id;
	FUNC1(&qxl_crtc->base, &qxl_crtc_helper_funcs);
	return 0;

clean_cursor:
	FUNC3(cursor);
	FUNC4(cursor);
clean_primary:
	FUNC3(primary);
	FUNC4(primary);
free_mem:
	FUNC4(qxl_crtc);
	return r;
}