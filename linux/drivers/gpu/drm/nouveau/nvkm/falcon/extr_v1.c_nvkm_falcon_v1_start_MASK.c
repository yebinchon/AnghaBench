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
struct nvkm_falcon {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct nvkm_falcon*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_falcon*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct nvkm_falcon *falcon)
{
	u32 reg = FUNC1(falcon, 0x100);

	if (reg & FUNC0(6))
		FUNC2(falcon, 0x130, 0x2);
	else
		FUNC2(falcon, 0x100, 0x2);
}