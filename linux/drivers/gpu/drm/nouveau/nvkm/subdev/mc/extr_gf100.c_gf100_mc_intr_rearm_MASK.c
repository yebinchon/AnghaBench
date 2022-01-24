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
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_mc {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_device*,int,int) ; 

void
FUNC1(struct nvkm_mc *mc)
{
	struct nvkm_device *device = mc->subdev.device;
	FUNC0(device, 0x000140, 0x00000001);
	FUNC0(device, 0x000144, 0x00000001);
}