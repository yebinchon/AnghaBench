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
struct cppi41_dd {scalar_t__ qmgr_mem; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static u32 FUNC2(struct cppi41_dd *cdd, unsigned queue_num)
{
	u32 desc;

	desc = FUNC1(cdd->qmgr_mem + FUNC0(queue_num));
	desc &= ~0x1f;
	return desc;
}