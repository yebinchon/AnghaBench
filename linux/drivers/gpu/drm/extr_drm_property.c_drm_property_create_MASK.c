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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_property {int num_values; char* name; struct drm_property* values; int /*<<< orphan*/  head; int /*<<< orphan*/  enum_list; int /*<<< orphan*/  flags; int /*<<< orphan*/  base; struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  property_list; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_OBJECT_PROPERTY ; 
 int DRM_PROP_NAME_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct drm_property* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_property*) ; 
 struct drm_property* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 

struct drm_property *FUNC10(struct drm_device *dev,
					 u32 flags, const char *name,
					 int num_values)
{
	struct drm_property *property = NULL;
	int ret;

	if (FUNC1(!FUNC3(flags)))
		return NULL;

	if (FUNC1(FUNC8(name) >= DRM_PROP_NAME_LEN))
		return NULL;

	property = FUNC6(sizeof(struct drm_property), GFP_KERNEL);
	if (!property)
		return NULL;

	property->dev = dev;

	if (num_values) {
		property->values = FUNC4(num_values, sizeof(uint64_t),
					   GFP_KERNEL);
		if (!property->values)
			goto fail;
	}

	ret = FUNC2(dev, &property->base, DRM_MODE_OBJECT_PROPERTY);
	if (ret)
		goto fail;

	property->flags = flags;
	property->num_values = num_values;
	FUNC0(&property->enum_list);

	FUNC9(property->name, name, DRM_PROP_NAME_LEN);
	property->name[DRM_PROP_NAME_LEN-1] = '\0';

	FUNC7(&property->head, &dev->mode_config.property_list);

	return property;
fail:
	FUNC5(property->values);
	FUNC5(property);
	return NULL;
}