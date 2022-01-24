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
struct gt215_ramfuc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gt215_ramfuc*,int) ; 
 int FUNC1 (struct gt215_ramfuc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gt215_ramfuc*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct gt215_ramfuc *fuc, u32 *mr)
{
	u32 mr1_old = FUNC1(fuc, mr[1]);

	if (!(mr1_old & 0x40)) {
		FUNC2(fuc, mr[1], mr[1]);
		FUNC0(fuc, 1000);
	}
}