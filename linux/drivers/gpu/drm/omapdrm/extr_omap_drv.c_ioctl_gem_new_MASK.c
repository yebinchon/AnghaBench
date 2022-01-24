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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  bytes; } ;
struct drm_omap_gem_new {int flags; int /*<<< orphan*/  handle; TYPE_1__ size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int OMAP_BO_USER_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct drm_device*,struct drm_file*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct drm_device*,struct drm_file*,TYPE_1__,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct drm_device *dev, void *data,
		struct drm_file *file_priv)
{
	struct drm_omap_gem_new *args = data;
	u32 flags = args->flags & OMAP_BO_USER_MASK;

	FUNC0("%p:%p: size=0x%08x, flags=%08x", dev, file_priv,
	     args->size.bytes, flags);

	return FUNC1(dev, file_priv, args->size, flags,
				   &args->handle);
}