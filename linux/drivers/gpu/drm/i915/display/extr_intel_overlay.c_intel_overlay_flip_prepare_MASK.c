#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct intel_overlay {TYPE_4__* vma; TYPE_4__* old_vma; int /*<<< orphan*/  i915; TYPE_3__* crtc; } ;
struct i915_vma {TYPE_2__* obj; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_9__ {TYPE_1__* obj; } ;
struct TYPE_8__ {int pipe; } ;
struct TYPE_7__ {int /*<<< orphan*/ * frontbuffer; } ;
struct TYPE_6__ {int /*<<< orphan*/ * frontbuffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_4__* FUNC2 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct intel_overlay *overlay,
				       struct i915_vma *vma)
{
	enum pipe pipe = overlay->crtc->pipe;

	FUNC1(overlay->old_vma);

	FUNC4(overlay->vma ? overlay->vma->obj->frontbuffer : NULL,
				vma ? vma->obj->frontbuffer : NULL,
				FUNC0(pipe));

	FUNC3(overlay->i915,
				       FUNC0(pipe));

	overlay->old_vma = overlay->vma;
	if (vma)
		overlay->vma = FUNC2(vma);
	else
		overlay->vma = NULL;
}