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
struct TYPE_5__ {int chipset; } ;
struct nvif_device {TYPE_2__ info; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {struct nvif_device device; } ;
struct TYPE_6__ {TYPE_1__ client; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 

void
FUNC3(struct drm_device *device)
{
	struct nvif_device *dev = &FUNC0(device)->client.device;
	if (dev->info.chipset < 0x10)
		FUNC1(device);
	else if (dev->info.chipset <= 0x40)
		FUNC2(device);
}