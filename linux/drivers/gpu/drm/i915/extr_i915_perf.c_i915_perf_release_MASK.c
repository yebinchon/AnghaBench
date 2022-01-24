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
struct inode {int dummy; } ;
struct i915_perf_stream {struct drm_i915_private* dev_priv; } ;
struct file {struct i915_perf_stream* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {int /*<<< orphan*/  drm; TYPE_1__ perf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_perf_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct i915_perf_stream *stream = file->private_data;
	struct drm_i915_private *dev_priv = stream->dev_priv;

	FUNC2(&dev_priv->perf.lock);
	FUNC1(stream);
	FUNC3(&dev_priv->perf.lock);

	/* Release the reference the perf stream kept on the driver. */
	FUNC0(&dev_priv->drm);

	return 0;
}