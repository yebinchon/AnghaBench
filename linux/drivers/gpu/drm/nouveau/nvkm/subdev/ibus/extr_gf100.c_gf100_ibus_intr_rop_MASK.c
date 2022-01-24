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
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int) ; 

__attribute__((used)) static void
FUNC3(struct nvkm_subdev *ibus, int i)
{
	struct nvkm_device *device = ibus->device;
	u32 addr = FUNC2(device, 0x124120 + (i * 0x0400));
	u32 data = FUNC2(device, 0x124124 + (i * 0x0400));
	u32 stat = FUNC2(device, 0x124128 + (i * 0x0400));
	FUNC0(ibus, "ROP%d: %06x %08x (%08x)\n", i, addr, data, stat);
	FUNC1(device, 0x124128 + (i * 0x0400), 0x00000200, 0x00000000);
}