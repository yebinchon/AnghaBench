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
struct seq_file {struct drm_i915_private* private; } ;
struct drm_i915_private {int /*<<< orphan*/  ipc_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *data)
{
	struct drm_i915_private *dev_priv = m->private;

	FUNC0(m, "Isochronous Priority Control: %s\n",
			FUNC1(dev_priv->ipc_enabled));
	return 0;
}