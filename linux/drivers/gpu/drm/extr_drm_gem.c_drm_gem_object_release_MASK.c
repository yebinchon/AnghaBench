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
struct drm_gem_object {int /*<<< orphan*/  _resv; scalar_t__ filp; int /*<<< orphan*/  dma_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void
FUNC4(struct drm_gem_object *obj)
{
	FUNC0(obj->dma_buf);

	if (obj->filp)
		FUNC3(obj->filp);

	FUNC1(&obj->_resv);
	FUNC2(obj);
}