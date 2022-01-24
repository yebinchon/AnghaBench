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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {TYPE_3__* outp; TYPE_2__* subdev; } ;
struct nvbios_connE {int type; } ;
struct TYPE_6__ {scalar_t__ connector; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct nvbios_init*) ; 
 scalar_t__ FUNC2 (struct nvkm_bios*,scalar_t__,int*,int*,struct nvbios_connE*) ; 

__attribute__((used)) static u8
FUNC3(struct nvbios_init *init)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	struct nvbios_connE connE;
	u8  ver, hdr;
	u32 conn;

	if (FUNC1(init)) {
		if (init->outp) {
			conn = init->outp->connector;
			conn = FUNC2(bios, conn, &ver, &hdr, &connE);
			if (conn)
				return connE.type;
		}

		FUNC0("script needs connector type\n");
	}

	return 0xff;
}