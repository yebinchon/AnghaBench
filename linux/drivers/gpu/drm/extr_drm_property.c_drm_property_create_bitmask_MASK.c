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
typedef  unsigned long long uint64_t ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_property {int dummy; } ;
struct drm_prop_enum_list {unsigned long long type; int /*<<< orphan*/  name; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_PROP_BITMASK ; 
 int FUNC0 (struct drm_property*,unsigned long long,int /*<<< orphan*/ ) ; 
 struct drm_property* FUNC1 (struct drm_device*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_property*) ; 
 int FUNC3 (unsigned long long) ; 

struct drm_property *FUNC4(struct drm_device *dev,
						 u32 flags, const char *name,
						 const struct drm_prop_enum_list *props,
						 int num_props,
						 uint64_t supported_bits)
{
	struct drm_property *property;
	int i, ret;
	int num_values = FUNC3(supported_bits);

	flags |= DRM_MODE_PROP_BITMASK;

	property = FUNC1(dev, flags, name, num_values);
	if (!property)
		return NULL;
	for (i = 0; i < num_props; i++) {
		if (!(supported_bits & (1ULL << props[i].type)))
			continue;

		ret = FUNC0(property,
					    props[i].type,
					    props[i].name);
		if (ret) {
			FUNC2(dev, property);
			return NULL;
		}
	}

	return property;
}