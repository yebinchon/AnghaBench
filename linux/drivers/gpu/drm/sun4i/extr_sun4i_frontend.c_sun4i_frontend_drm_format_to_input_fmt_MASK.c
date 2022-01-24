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
typedef  int /*<<< orphan*/  u32 ;
struct drm_format_info {int /*<<< orphan*/  is_yuv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_RGB ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV411 ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV420 ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV422 ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV444 ; 
 scalar_t__ FUNC0 (struct drm_format_info const*) ; 
 scalar_t__ FUNC1 (struct drm_format_info const*) ; 
 scalar_t__ FUNC2 (struct drm_format_info const*) ; 
 scalar_t__ FUNC3 (struct drm_format_info const*) ; 

__attribute__((used)) static int
FUNC4(const struct drm_format_info *format,
				       u32 *val)
{
	if (!format->is_yuv)
		*val = SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_RGB;
	else if (FUNC0(format))
		*val = SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV411;
	else if (FUNC1(format))
		*val = SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV420;
	else if (FUNC2(format))
		*val = SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV422;
	else if (FUNC3(format))
		*val = SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV444;
	else
		return -EINVAL;

	return 0;
}