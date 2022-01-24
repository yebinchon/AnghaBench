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
struct page {int dummy; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct etnaviv_gem_object {struct page** pages; TYPE_1__ base; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page**) ; 
 int FUNC1 (struct page**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct page** FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct etnaviv_gem_object *etnaviv_obj)
{
	struct drm_device *dev = etnaviv_obj->base.dev;
	struct page **p = FUNC3(&etnaviv_obj->base);

	if (FUNC0(p)) {
		FUNC2(dev->dev, "could not get pages: %ld\n", FUNC1(p));
		return FUNC1(p);
	}

	etnaviv_obj->pages = p;

	return 0;
}