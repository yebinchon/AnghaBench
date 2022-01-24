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
struct nvkm_ltc {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  gf100_ltc_lts_intr_name ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,char*,int,int,int,char*) ; 
 int FUNC1 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct nvkm_ltc *ltc, int c, int s)
{
	struct nvkm_subdev *subdev = &ltc->subdev;
	struct nvkm_device *device = subdev->device;
	u32 base = 0x141000 + (c * 0x2000) + (s * 0x400);
	u32 intr = FUNC1(device, base + 0x020);
	u32 stat = intr & 0x0000ffff;
	char msg[128];

	if (stat) {
		FUNC2(msg, sizeof(msg), gf100_ltc_lts_intr_name, stat);
		FUNC0(subdev, "LTC%d_LTS%d: %08x [%s]\n", c, s, stat, msg);
	}

	FUNC3(device, base + 0x020, intr);
}