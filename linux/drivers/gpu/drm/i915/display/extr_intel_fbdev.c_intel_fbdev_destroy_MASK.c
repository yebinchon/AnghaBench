#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* dev; } ;
struct intel_fbdev {TYPE_1__* fb; TYPE_3__ helper; int /*<<< orphan*/  vma_flags; scalar_t__ vma; } ;
struct TYPE_5__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_4__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_fbdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct intel_fbdev *ifbdev)
{
	/* We rely on the object-free to release the VMA pinning for
	 * the info->screen_base mmaping. Leaking the VMA is simpler than
	 * trying to rectify all the possible error paths leading here.
	 */

	FUNC0(&ifbdev->helper);

	if (ifbdev->vma) {
		FUNC4(&ifbdev->helper.dev->struct_mutex);
		FUNC2(ifbdev->vma, ifbdev->vma_flags);
		FUNC5(&ifbdev->helper.dev->struct_mutex);
	}

	if (ifbdev->fb)
		FUNC1(&ifbdev->fb->base);

	FUNC3(ifbdev);
}