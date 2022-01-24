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
struct i915_request {int /*<<< orphan*/ * file_priv; int /*<<< orphan*/  client_link; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_file_private {TYPE_1__ mm; } ;

/* Variables and functions */
 struct drm_i915_file_private* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC4(struct i915_request *request)
{
	struct drm_i915_file_private *file_priv;

	file_priv = FUNC0(request->file_priv);
	if (!file_priv)
		return;

	FUNC2(&file_priv->mm.lock);
	if (request->file_priv) {
		FUNC1(&request->client_link);
		request->file_priv = NULL;
	}
	FUNC3(&file_priv->mm.lock);
}