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
struct nvkm_mc {TYPE_1__* func; } ;
struct TYPE_2__ {int (* intr_stat ) (struct nvkm_mc*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct nvkm_mc*) ; 

__attribute__((used)) static u32
FUNC2(struct nvkm_mc *mc)
{
	u32 intr = mc->func->intr_stat(mc);
	if (FUNC0(intr == 0xffffffff))
		intr = 0; /* likely fallen off the bus */
	return intr;
}