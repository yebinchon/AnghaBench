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
struct nvkm_ram {int dummy; } ;
struct gf100_ram {int /*<<< orphan*/  fuc; } ;

/* Variables and functions */
 struct gf100_ram* FUNC0 (struct nvkm_ram*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

void
FUNC2(struct nvkm_ram *base)
{
	struct gf100_ram *ram = FUNC0(base);
	FUNC1(&ram->fuc, false);
}