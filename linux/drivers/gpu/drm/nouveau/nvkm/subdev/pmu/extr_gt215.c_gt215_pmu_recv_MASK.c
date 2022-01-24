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
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct TYPE_2__ {int base; int process; int message; int* data; int /*<<< orphan*/  wait; } ;
struct nvkm_pmu {TYPE_1__ recv; struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,char*,char,char,char,char,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct nvkm_pmu *pmu)
{
	struct nvkm_subdev *subdev = &pmu->subdev;
	struct nvkm_device *device = subdev->device;
	u32 process, message, data0, data1;

	/* nothing to do if GET == PUT */
	u32 addr =  FUNC0(device, 0x10a4cc);
	if (addr == FUNC0(device, 0x10a4c8))
		return;

	/* acquire data segment access */
	do {
		FUNC2(device, 0x10a580, 0x00000002);
	} while (FUNC0(device, 0x10a580) != 0x00000002);

	/* read the packet */
	FUNC2(device, 0x10a1c0, 0x02000000 | (((addr & 0x07) << 4) +
				pmu->recv.base));
	process = FUNC0(device, 0x10a1c4);
	message = FUNC0(device, 0x10a1c4);
	data0   = FUNC0(device, 0x10a1c4);
	data1   = FUNC0(device, 0x10a1c4);
	FUNC2(device, 0x10a4cc, (addr + 1) & 0x0f);

	/* release data segment access */
	FUNC2(device, 0x10a580, 0x00000000);

	/* wake process if it's waiting on a synchronous reply */
	if (pmu->recv.process) {
		if (process == pmu->recv.process &&
		    message == pmu->recv.message) {
			pmu->recv.data[0] = data0;
			pmu->recv.data[1] = data1;
			pmu->recv.process = 0;
			FUNC3(&pmu->recv.wait);
			return;
		}
	}

	/* right now there's no other expected responses from the engine,
	 * so assume that any unexpected message is an error.
	 */
	FUNC1(subdev, "%c%c%c%c %08x %08x %08x %08x\n",
		  (char)((process & 0x000000ff) >>  0),
		  (char)((process & 0x0000ff00) >>  8),
		  (char)((process & 0x00ff0000) >> 16),
		  (char)((process & 0xff000000) >> 24),
		  process, message, data0, data1);
}