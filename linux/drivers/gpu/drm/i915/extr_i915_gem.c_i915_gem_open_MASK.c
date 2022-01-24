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
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  request_list; int /*<<< orphan*/  lock; } ;
struct drm_i915_file_private {int bsd_engine; int /*<<< orphan*/  hang_timestamp; TYPE_1__ mm; struct drm_file* file; struct drm_i915_private* dev_priv; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_i915_private*,struct drm_file*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_file_private*) ; 
 struct drm_i915_file_private* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct drm_i915_private *i915, struct drm_file *file)
{
	struct drm_i915_file_private *file_priv;
	int ret;

	FUNC0("\n");

	file_priv = FUNC4(sizeof(*file_priv), GFP_KERNEL);
	if (!file_priv)
		return -ENOMEM;

	file->driver_priv = file_priv;
	file_priv->dev_priv = i915;
	file_priv->file = file;

	FUNC5(&file_priv->mm.lock);
	FUNC1(&file_priv->mm.request_list);

	file_priv->bsd_engine = -1;
	file_priv->hang_timestamp = jiffies;

	ret = FUNC2(i915, file);
	if (ret)
		FUNC3(file_priv);

	return ret;
}