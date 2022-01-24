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
struct drm_display_info {unsigned int num_bus_formats; int /*<<< orphan*/ * bus_formats; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct drm_display_info *info,
				     const u32 *formats,
				     unsigned int num_formats)
{
	u32 *fmts = NULL;

	if (!formats && num_formats)
		return -EINVAL;

	if (formats && num_formats) {
		fmts = FUNC1(formats, sizeof(*formats) * num_formats,
			       GFP_KERNEL);
		if (!fmts)
			return -ENOMEM;
	}

	FUNC0(info->bus_formats);
	info->bus_formats = fmts;
	info->num_bus_formats = num_formats;

	return 0;
}