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
struct TYPE_2__ {int /*<<< orphan*/  path_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_connector {int /*<<< orphan*/  base; int /*<<< orphan*/  path_blob_ptr; struct drm_device* dev; } ;

/* Variables and functions */
 int FUNC0 (struct drm_device*,int /*<<< orphan*/ *,scalar_t__,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*) ; 

int FUNC2(struct drm_connector *connector,
				    const char *path)
{
	struct drm_device *dev = connector->dev;
	int ret;

	ret = FUNC0(dev,
	                                       &connector->path_blob_ptr,
	                                       FUNC1(path) + 1,
	                                       path,
	                                       &connector->base,
	                                       dev->mode_config.path_property);
	return ret;
}