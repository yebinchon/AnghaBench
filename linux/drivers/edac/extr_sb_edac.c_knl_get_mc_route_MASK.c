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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int KNL_MAX_CHANNELS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static u32 FUNC3(int entry, u32 reg)
{
	int mc, chan;

	FUNC1(entry >= KNL_MAX_CHANNELS);

	mc = FUNC0(reg, entry*3, (entry*3)+2);
	chan = FUNC0(reg, (entry*2) + 18, (entry*2) + 18 + 1);

	return FUNC2(mc, chan);
}