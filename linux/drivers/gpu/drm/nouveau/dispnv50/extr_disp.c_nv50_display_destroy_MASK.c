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
struct nv50_disp {scalar_t__ sync; int /*<<< orphan*/  core; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nv50_disp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_1__* FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct nv50_disp* FUNC6 (struct drm_device*) ; 

__attribute__((used)) static void
FUNC7(struct drm_device *dev)
{
	struct nv50_disp *disp = FUNC6(dev);

	FUNC5(&disp->core);

	FUNC2(disp->sync);
	if (disp->sync)
		FUNC3(disp->sync);
	FUNC1(NULL, &disp->sync);

	FUNC4(dev)->priv = NULL;
	FUNC0(disp);
}