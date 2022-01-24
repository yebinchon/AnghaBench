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
struct seq_file {int /*<<< orphan*/  private; } ;
struct drm_printer {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sseu; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct drm_i915_private*) ; 
 struct drm_printer FUNC1 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct drm_printer*) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct seq_file *m, void *unused)
{
	struct drm_i915_private *dev_priv = FUNC3(m->private);
	struct drm_printer p = FUNC1(m);

	FUNC2(&FUNC0(dev_priv)->sseu, &p);

	return 0;
}