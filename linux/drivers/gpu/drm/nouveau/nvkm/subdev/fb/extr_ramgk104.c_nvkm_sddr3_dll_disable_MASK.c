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
struct gk104_ramfuc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * mr ; 
 int /*<<< orphan*/  FUNC0 (struct gk104_ramfuc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gk104_ramfuc*,int) ; 
 int FUNC2 (struct gk104_ramfuc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct gk104_ramfuc *fuc)
{
	u32 mr1_old = FUNC2(fuc, mr[1]);

	if (!(mr1_old & 0x1)) {
		FUNC0(fuc, mr[1], 0x1, 0x1);
		FUNC1(fuc, 1000);
	}
}