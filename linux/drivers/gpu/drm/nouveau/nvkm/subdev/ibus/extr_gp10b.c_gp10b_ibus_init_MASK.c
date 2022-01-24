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
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static int
FUNC2(struct nvkm_subdev *ibus)
{
	struct nvkm_device *device = ibus->device;

	FUNC1(device, 0x1200a8, 0x0);

	/* init ring */
	FUNC1(device, 0x12004c, 0x4);
	FUNC1(device, 0x122204, 0x2);
	FUNC0(device, 0x122204);

	/* timeout configuration */
	FUNC1(device, 0x009080, 0x800186a0);

	return 0;
}