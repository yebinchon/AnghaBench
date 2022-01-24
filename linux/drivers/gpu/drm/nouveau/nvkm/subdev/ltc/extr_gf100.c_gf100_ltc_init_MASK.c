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
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_ltc {int /*<<< orphan*/  tag_base; int /*<<< orphan*/  ltc_nr; TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_device*,int,int,int) ; 
 int FUNC1 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct nvkm_ltc *ltc)
{
	struct nvkm_device *device = ltc->subdev.device;
	u32 lpg128 = !(FUNC1(device, 0x100c80) & 0x00000001);

	FUNC0(device, 0x17e820, 0x00100000, 0x00000000); /* INTR_EN &= ~0x10 */
	FUNC2(device, 0x17e8d8, ltc->ltc_nr);
	FUNC2(device, 0x17e8d4, ltc->tag_base);
	FUNC0(device, 0x17e8c0, 0x00000002, lpg128 ? 0x00000002 : 0x00000000);
}