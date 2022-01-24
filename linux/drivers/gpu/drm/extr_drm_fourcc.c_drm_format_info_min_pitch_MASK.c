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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int u64 ;
struct drm_format_info {int num_planes; int* char_per_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct drm_format_info const*,int) ; 
 int FUNC2 (struct drm_format_info const*,int) ; 

uint64_t FUNC3(const struct drm_format_info *info,
				   int plane, unsigned int buffer_width)
{
	if (!info || plane < 0 || plane >= info->num_planes)
		return 0;

	return FUNC0((u64)buffer_width * info->char_per_block[plane],
			    FUNC2(info, plane) *
			    FUNC1(info, plane));
}