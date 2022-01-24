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
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_fault {int /*<<< orphan*/  event; scalar_t__* buffer; struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_fault*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC5(struct nvkm_fault *fault)
{
	struct nvkm_subdev *subdev = &fault->subdev;
	struct nvkm_device *device = subdev->device;
	u32 stat = FUNC3(device, 0x100a20);

	if (stat & 0x80000000) {
		FUNC0(fault);
		FUNC4(device, 0x100e60, 0x80000000);
		stat &= ~0x80000000;
	}

	if (stat & 0x20000000) {
		if (fault->buffer[0]) {
			FUNC2(&fault->event, 1, 0, NULL, 0);
			stat &= ~0x20000000;
		}
	}

	if (stat & 0x08000000) {
		if (fault->buffer[1]) {
			FUNC2(&fault->event, 1, 1, NULL, 0);
			stat &= ~0x08000000;
		}
	}

	if (stat) {
		FUNC1(subdev, "intr %08x\n", stat);
	}
}