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
typedef  int u32 ;
struct drm_property {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int DRM_MODE_PROP_SIGNED_RANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct drm_property* FUNC1 (struct drm_device*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct drm_property *FUNC2(struct drm_device *dev,
						      u32 flags, const char *name,
						      int64_t min, int64_t max)
{
	return FUNC1(dev, DRM_MODE_PROP_SIGNED_RANGE | flags,
			name, FUNC0(min), FUNC0(max));
}