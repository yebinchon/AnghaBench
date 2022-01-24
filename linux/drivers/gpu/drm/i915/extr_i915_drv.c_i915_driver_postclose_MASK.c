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
struct drm_i915_file_private {int dummy; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_file_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 

__attribute__((used)) static void FUNC7(struct drm_device *dev, struct drm_file *file)
{
	struct drm_i915_file_private *file_priv = file->driver_priv;

	FUNC4(&dev->struct_mutex);
	FUNC0(file);
	FUNC2(dev, file);
	FUNC5(&dev->struct_mutex);

	FUNC3(file_priv);

	/* Catch up with all the deferred frees from "this" client */
	FUNC1(FUNC6(dev));
}