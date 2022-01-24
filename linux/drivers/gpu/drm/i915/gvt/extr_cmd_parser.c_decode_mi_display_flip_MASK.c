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
struct parser_exec_state {TYPE_2__* vgpu; } ;
struct mi_display_flip_command_info {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {TYPE_1__* gvt; } ;
struct TYPE_3__ {struct drm_i915_private* dev_priv; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (struct parser_exec_state*,struct mi_display_flip_command_info*) ; 
 int FUNC3 (struct parser_exec_state*,struct mi_display_flip_command_info*) ; 

__attribute__((used)) static int FUNC4(struct parser_exec_state *s,
		struct mi_display_flip_command_info *info)
{
	struct drm_i915_private *dev_priv = s->vgpu->gvt->dev_priv;

	if (FUNC1(dev_priv))
		return FUNC2(s, info);
	if (FUNC0(dev_priv) >= 9)
		return FUNC3(s, info);

	return -ENODEV;
}