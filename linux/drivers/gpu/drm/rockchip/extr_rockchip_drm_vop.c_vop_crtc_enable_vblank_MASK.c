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
struct vop {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  is_enabled; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FS_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct vop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  clear ; 
 int /*<<< orphan*/  enable ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vop* FUNC4 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC5(struct drm_crtc *crtc)
{
	struct vop *vop = FUNC4(crtc);
	unsigned long flags;

	if (FUNC1(!vop->is_enabled))
		return -EPERM;

	FUNC2(&vop->irq_lock, flags);

	FUNC0(vop, clear, FS_INTR, 1);
	FUNC0(vop, enable, FS_INTR, 1);

	FUNC3(&vop->irq_lock, flags);

	return 0;
}