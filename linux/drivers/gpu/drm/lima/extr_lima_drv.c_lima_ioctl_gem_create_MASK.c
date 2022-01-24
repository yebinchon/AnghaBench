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
struct drm_lima_gem_create {scalar_t__ size; int /*<<< orphan*/  handle; scalar_t__ flags; scalar_t__ pad; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct drm_device*,struct drm_file*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct drm_device *dev, void *data, struct drm_file *file)
{
	struct drm_lima_gem_create *args = data;

	if (args->pad)
		return -EINVAL;

	if (args->flags)
		return -EINVAL;

	if (args->size == 0)
		return -EINVAL;

	return FUNC0(dev, file, args->size, args->flags, &args->handle);
}