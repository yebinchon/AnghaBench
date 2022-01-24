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
struct i915_request {int /*<<< orphan*/  client_link; struct drm_i915_file_private* file_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  request_list; } ;
struct drm_i915_file_private {TYPE_1__ mm; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct i915_request *rq, struct drm_file *file)
{
	struct drm_i915_file_private *file_priv = file->driver_priv;

	rq->file_priv = file_priv;

	FUNC1(&file_priv->mm.lock);
	FUNC0(&rq->client_link, &file_priv->mm.request_list);
	FUNC2(&file_priv->mm.lock);
}