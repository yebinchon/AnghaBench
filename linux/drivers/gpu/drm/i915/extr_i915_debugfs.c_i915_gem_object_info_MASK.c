#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int /*<<< orphan*/  private; } ;
struct TYPE_3__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_4__ {int /*<<< orphan*/  shrink_memory; int /*<<< orphan*/  free_count; int /*<<< orphan*/  shrink_count; } ;
struct drm_i915_private {TYPE_1__ drm; TYPE_2__ mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char) ; 

__attribute__((used)) static int FUNC7(struct seq_file *m, void *data)
{
	struct drm_i915_private *i915 = FUNC3(m->private);
	int ret;

	FUNC5(m, "%u shrinkable [%u free] objects, %llu bytes\n",
		   i915->mm.shrink_count,
		   FUNC0(&i915->mm.free_count),
		   i915->mm.shrink_memory);

	FUNC6(m, '\n');

	ret = FUNC1(&i915->drm.struct_mutex);
	if (ret)
		return ret;

	FUNC4(m, i915);
	FUNC2(&i915->drm.struct_mutex);

	return 0;
}