#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_10__ {TYPE_2__* vma; } ;
struct TYPE_11__ {TYPE_3__ log; } ;
struct TYPE_12__ {TYPE_4__ guc; struct drm_i915_gem_object* load_err_log; } ;
struct TYPE_13__ {TYPE_5__ uc; } ;
struct drm_i915_private {TYPE_6__ gt; } ;
struct TYPE_14__ {int size; } ;
struct drm_i915_gem_object {TYPE_7__ base; } ;
struct TYPE_9__ {struct drm_i915_gem_object* obj; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  I915_MAP_WC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct drm_i915_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*) ; 
 struct drm_i915_private* FUNC6 (struct drm_info_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC9 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC10(struct seq_file *m, void *data)
{
	struct drm_info_node *node = m->private;
	struct drm_i915_private *dev_priv = FUNC6(node);
	bool dump_load_err = !!node->info_ent->data;
	struct drm_i915_gem_object *obj = NULL;
	u32 *log;
	int i = 0;

	if (!FUNC1(dev_priv))
		return -ENODEV;

	if (dump_load_err)
		obj = dev_priv->gt.uc.load_err_log;
	else if (dev_priv->gt.uc.guc.log.vma)
		obj = dev_priv->gt.uc.guc.log.vma->obj;

	if (!obj)
		return 0;

	log = FUNC4(obj, I915_MAP_WC);
	if (FUNC2(log)) {
		FUNC0("Failed to pin object\n");
		FUNC9(m, "(log data unaccessible)\n");
		return FUNC3(log);
	}

	for (i = 0; i < obj->base.size / sizeof(u32); i += 4)
		FUNC7(m, "0x%08x 0x%08x 0x%08x 0x%08x\n",
			   *(log + i), *(log + i + 1),
			   *(log + i + 2), *(log + i + 3));

	FUNC8(m, '\n');

	FUNC5(obj);

	return 0;
}