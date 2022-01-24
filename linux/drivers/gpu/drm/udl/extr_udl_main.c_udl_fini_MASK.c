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
struct TYPE_2__ {scalar_t__ count; } ;
struct udl_device {TYPE_1__ urbs; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 struct udl_device* FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 

void FUNC4(struct drm_device *dev)
{
	struct udl_device *udl = FUNC1(dev);

	FUNC0(dev);

	if (udl->urbs.count)
		FUNC3(dev);

	FUNC2(dev);
}