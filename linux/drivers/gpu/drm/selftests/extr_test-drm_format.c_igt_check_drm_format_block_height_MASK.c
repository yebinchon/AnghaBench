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
struct drm_format_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_FORMAT_NV12 ; 
 int /*<<< orphan*/  DRM_FORMAT_X0L0 ; 
 int /*<<< orphan*/  DRM_FORMAT_XRGB4444 ; 
 int /*<<< orphan*/  DRM_FORMAT_YUV422 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct drm_format_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_format_info const*,int) ; 

int FUNC3(void *ignored)
{
	const struct drm_format_info *info = NULL;

	/* Test invalid arguments */
	FUNC0(FUNC2(info, 0) != 0);
	FUNC0(FUNC2(info, -1) != 0);
	FUNC0(FUNC2(info, 1) != 0);

	/* Test 1 plane format */
	info = FUNC1(DRM_FORMAT_XRGB4444);
	FUNC0(!info);
	FUNC0(FUNC2(info, 0) != 1);
	FUNC0(FUNC2(info, 1) != 0);
	FUNC0(FUNC2(info, -1) != 0);

	/* Test 2 planes format */
	info = FUNC1(DRM_FORMAT_NV12);
	FUNC0(!info);
	FUNC0(FUNC2(info, 0) != 1);
	FUNC0(FUNC2(info, 1) != 1);
	FUNC0(FUNC2(info, 2) != 0);
	FUNC0(FUNC2(info, -1) != 0);

	/* Test 3 planes format */
	info = FUNC1(DRM_FORMAT_YUV422);
	FUNC0(!info);
	FUNC0(FUNC2(info, 0) != 1);
	FUNC0(FUNC2(info, 1) != 1);
	FUNC0(FUNC2(info, 2) != 1);
	FUNC0(FUNC2(info, 3) != 0);
	FUNC0(FUNC2(info, -1) != 0);

	/* Test a tiled format */
	info = FUNC1(DRM_FORMAT_X0L0);
	FUNC0(!info);
	FUNC0(FUNC2(info, 0) != 2);
	FUNC0(FUNC2(info, 1) != 0);
	FUNC0(FUNC2(info, -1) != 0);

	return 0;
}