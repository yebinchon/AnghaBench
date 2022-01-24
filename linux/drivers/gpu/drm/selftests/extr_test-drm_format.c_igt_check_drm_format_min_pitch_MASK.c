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
typedef  int uint64_t ;
struct drm_format_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_FORMAT_ABGR8888 ; 
 int /*<<< orphan*/  DRM_FORMAT_NV12 ; 
 int /*<<< orphan*/  DRM_FORMAT_RGB332 ; 
 int /*<<< orphan*/  DRM_FORMAT_RGB888 ; 
 int /*<<< orphan*/  DRM_FORMAT_X0L2 ; 
 int /*<<< orphan*/  DRM_FORMAT_XRGB4444 ; 
 int /*<<< orphan*/  DRM_FORMAT_YUV422 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int UINT_MAX ; 
 struct drm_format_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_format_info const*,int,int) ; 

int FUNC3(void *ignored)
{
	const struct drm_format_info *info = NULL;

	/* Test invalid arguments */
	FUNC0(FUNC2(info, 0, 0) != 0);
	FUNC0(FUNC2(info, -1, 0) != 0);
	FUNC0(FUNC2(info, 1, 0) != 0);

	/* Test 1 plane 8 bits per pixel format */
	info = FUNC1(DRM_FORMAT_RGB332);
	FUNC0(!info);
	FUNC0(FUNC2(info, 0, 0) != 0);
	FUNC0(FUNC2(info, -1, 0) != 0);
	FUNC0(FUNC2(info, 1, 0) != 0);

	FUNC0(FUNC2(info, 0, 1) != 1);
	FUNC0(FUNC2(info, 0, 2) != 2);
	FUNC0(FUNC2(info, 0, 640) != 640);
	FUNC0(FUNC2(info, 0, 1024) != 1024);
	FUNC0(FUNC2(info, 0, 1920) != 1920);
	FUNC0(FUNC2(info, 0, 4096) != 4096);
	FUNC0(FUNC2(info, 0, 671) != 671);
	FUNC0(FUNC2(info, 0, UINT_MAX) !=
			(uint64_t)UINT_MAX);
	FUNC0(FUNC2(info, 0, (UINT_MAX - 1)) !=
			(uint64_t)(UINT_MAX - 1));

	/* Test 1 plane 16 bits per pixel format */
	info = FUNC1(DRM_FORMAT_XRGB4444);
	FUNC0(!info);
	FUNC0(FUNC2(info, 0, 0) != 0);
	FUNC0(FUNC2(info, -1, 0) != 0);
	FUNC0(FUNC2(info, 1, 0) != 0);

	FUNC0(FUNC2(info, 0, 1) != 2);
	FUNC0(FUNC2(info, 0, 2) != 4);
	FUNC0(FUNC2(info, 0, 640) != 1280);
	FUNC0(FUNC2(info, 0, 1024) != 2048);
	FUNC0(FUNC2(info, 0, 1920) != 3840);
	FUNC0(FUNC2(info, 0, 4096) != 8192);
	FUNC0(FUNC2(info, 0, 671) != 1342);
	FUNC0(FUNC2(info, 0, UINT_MAX) !=
			(uint64_t)UINT_MAX * 2);
	FUNC0(FUNC2(info, 0, (UINT_MAX - 1)) !=
			(uint64_t)(UINT_MAX - 1) * 2);

	/* Test 1 plane 24 bits per pixel format */
	info = FUNC1(DRM_FORMAT_RGB888);
	FUNC0(!info);
	FUNC0(FUNC2(info, 0, 0) != 0);
	FUNC0(FUNC2(info, -1, 0) != 0);
	FUNC0(FUNC2(info, 1, 0) != 0);

	FUNC0(FUNC2(info, 0, 1) != 3);
	FUNC0(FUNC2(info, 0, 2) != 6);
	FUNC0(FUNC2(info, 0, 640) != 1920);
	FUNC0(FUNC2(info, 0, 1024) != 3072);
	FUNC0(FUNC2(info, 0, 1920) != 5760);
	FUNC0(FUNC2(info, 0, 4096) != 12288);
	FUNC0(FUNC2(info, 0, 671) != 2013);
	FUNC0(FUNC2(info, 0, UINT_MAX) !=
			(uint64_t)UINT_MAX * 3);
	FUNC0(FUNC2(info, 0, UINT_MAX - 1) !=
			(uint64_t)(UINT_MAX - 1) * 3);

	/* Test 1 plane 32 bits per pixel format */
	info = FUNC1(DRM_FORMAT_ABGR8888);
	FUNC0(!info);
	FUNC0(FUNC2(info, 0, 0) != 0);
	FUNC0(FUNC2(info, -1, 0) != 0);
	FUNC0(FUNC2(info, 1, 0) != 0);

	FUNC0(FUNC2(info, 0, 1) != 4);
	FUNC0(FUNC2(info, 0, 2) != 8);
	FUNC0(FUNC2(info, 0, 640) != 2560);
	FUNC0(FUNC2(info, 0, 1024) != 4096);
	FUNC0(FUNC2(info, 0, 1920) != 7680);
	FUNC0(FUNC2(info, 0, 4096) != 16384);
	FUNC0(FUNC2(info, 0, 671) != 2684);
	FUNC0(FUNC2(info, 0, UINT_MAX) !=
			(uint64_t)UINT_MAX * 4);
	FUNC0(FUNC2(info, 0, UINT_MAX - 1) !=
			(uint64_t)(UINT_MAX - 1) * 4);

	/* Test 2 planes format */
	info = FUNC1(DRM_FORMAT_NV12);
	FUNC0(!info);
	FUNC0(FUNC2(info, 0, 0) != 0);
	FUNC0(FUNC2(info, 1, 0) != 0);
	FUNC0(FUNC2(info, -1, 0) != 0);
	FUNC0(FUNC2(info, 2, 0) != 0);

	FUNC0(FUNC2(info, 0, 1) != 1);
	FUNC0(FUNC2(info, 1, 1) != 2);
	FUNC0(FUNC2(info, 0, 2) != 2);
	FUNC0(FUNC2(info, 1, 1) != 2);
	FUNC0(FUNC2(info, 0, 640) != 640);
	FUNC0(FUNC2(info, 1, 320) != 640);
	FUNC0(FUNC2(info, 0, 1024) != 1024);
	FUNC0(FUNC2(info, 1, 512) != 1024);
	FUNC0(FUNC2(info, 0, 1920) != 1920);
	FUNC0(FUNC2(info, 1, 960) != 1920);
	FUNC0(FUNC2(info, 0, 4096) != 4096);
	FUNC0(FUNC2(info, 1, 2048) != 4096);
	FUNC0(FUNC2(info, 0, 671) != 671);
	FUNC0(FUNC2(info, 1, 336) != 672);
	FUNC0(FUNC2(info, 0, UINT_MAX) !=
			(uint64_t)UINT_MAX);
	FUNC0(FUNC2(info, 1, UINT_MAX / 2 + 1) !=
			(uint64_t)UINT_MAX + 1);
	FUNC0(FUNC2(info, 0, (UINT_MAX - 1)) !=
			(uint64_t)(UINT_MAX - 1));
	FUNC0(FUNC2(info, 1, (UINT_MAX - 1) /  2) !=
			(uint64_t)(UINT_MAX - 1));

	/* Test 3 planes 8 bits per pixel format */
	info = FUNC1(DRM_FORMAT_YUV422);
	FUNC0(!info);
	FUNC0(FUNC2(info, 0, 0) != 0);
	FUNC0(FUNC2(info, 1, 0) != 0);
	FUNC0(FUNC2(info, 2, 0) != 0);
	FUNC0(FUNC2(info, -1, 0) != 0);
	FUNC0(FUNC2(info, 3, 0) != 0);

	FUNC0(FUNC2(info, 0, 1) != 1);
	FUNC0(FUNC2(info, 1, 1) != 1);
	FUNC0(FUNC2(info, 2, 1) != 1);
	FUNC0(FUNC2(info, 0, 2) != 2);
	FUNC0(FUNC2(info, 1, 2) != 2);
	FUNC0(FUNC2(info, 2, 2) != 2);
	FUNC0(FUNC2(info, 0, 640) != 640);
	FUNC0(FUNC2(info, 1, 320) != 320);
	FUNC0(FUNC2(info, 2, 320) != 320);
	FUNC0(FUNC2(info, 0, 1024) != 1024);
	FUNC0(FUNC2(info, 1, 512) != 512);
	FUNC0(FUNC2(info, 2, 512) != 512);
	FUNC0(FUNC2(info, 0, 1920) != 1920);
	FUNC0(FUNC2(info, 1, 960) != 960);
	FUNC0(FUNC2(info, 2, 960) != 960);
	FUNC0(FUNC2(info, 0, 4096) != 4096);
	FUNC0(FUNC2(info, 1, 2048) != 2048);
	FUNC0(FUNC2(info, 2, 2048) != 2048);
	FUNC0(FUNC2(info, 0, 671) != 671);
	FUNC0(FUNC2(info, 1, 336) != 336);
	FUNC0(FUNC2(info, 2, 336) != 336);
	FUNC0(FUNC2(info, 0, UINT_MAX) !=
			(uint64_t)UINT_MAX);
	FUNC0(FUNC2(info, 1, UINT_MAX / 2 + 1) !=
			(uint64_t)UINT_MAX / 2 + 1);
	FUNC0(FUNC2(info, 2, UINT_MAX / 2 + 1) !=
			(uint64_t)UINT_MAX / 2 + 1);
	FUNC0(FUNC2(info, 0, (UINT_MAX - 1) / 2) !=
			(uint64_t)(UINT_MAX - 1) / 2);
	FUNC0(FUNC2(info, 1, (UINT_MAX - 1) / 2) !=
			(uint64_t)(UINT_MAX - 1) / 2);
	FUNC0(FUNC2(info, 2, (UINT_MAX - 1) / 2) !=
			(uint64_t)(UINT_MAX - 1) / 2);

	/* Test tiled format */
	info = FUNC1(DRM_FORMAT_X0L2);
	FUNC0(!info);
	FUNC0(FUNC2(info, 0, 0) != 0);
	FUNC0(FUNC2(info, -1, 0) != 0);
	FUNC0(FUNC2(info, 1, 0) != 0);

	FUNC0(FUNC2(info, 0, 1) != 2);
	FUNC0(FUNC2(info, 0, 2) != 4);
	FUNC0(FUNC2(info, 0, 640) != 1280);
	FUNC0(FUNC2(info, 0, 1024) != 2048);
	FUNC0(FUNC2(info, 0, 1920) != 3840);
	FUNC0(FUNC2(info, 0, 4096) != 8192);
	FUNC0(FUNC2(info, 0, 671) != 1342);
	FUNC0(FUNC2(info, 0, UINT_MAX) !=
			(uint64_t)UINT_MAX * 2);
	FUNC0(FUNC2(info, 0, UINT_MAX - 1) !=
			(uint64_t)(UINT_MAX - 1) * 2);

	return 0;
}