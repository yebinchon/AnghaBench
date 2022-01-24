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
struct nvkm_ram {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * next; } ;
struct gk104_ram {int /*<<< orphan*/  fuc; TYPE_1__ base; } ;

/* Variables and functions */
 struct gk104_ram* FUNC0 (struct nvkm_ram*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

void
FUNC2(struct nvkm_ram *base)
{
	struct gk104_ram *ram = FUNC0(base);
	ram->base.next = NULL;
	FUNC1(&ram->fuc, false);
}