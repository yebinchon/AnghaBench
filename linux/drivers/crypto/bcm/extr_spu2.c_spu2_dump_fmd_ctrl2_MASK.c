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
typedef  int u64 ;

/* Variables and functions */
 int SPU2_AAD1_LEN ; 
 int SPU2_AAD1_LEN_SHIFT ; 
 int SPU2_AAD1_OFFSET ; 
 int SPU2_AAD2_OFFSET ; 
 int SPU2_AAD2_OFFSET_SHIFT ; 
 int SPU2_PL_OFFSET ; 
 int SPU2_PL_OFFSET_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 

__attribute__((used)) static void FUNC1(u64 ctrl2)
{
	FUNC0(" FMD CTRL2 %#16llx\n", ctrl2);

	FUNC0("  AAD1 offset %llu length %llu bytes\n",
		   ctrl2 & SPU2_AAD1_OFFSET,
		   (ctrl2 & SPU2_AAD1_LEN) >> SPU2_AAD1_LEN_SHIFT);
	FUNC0("  AAD2 offset %llu\n",
		   (ctrl2 & SPU2_AAD2_OFFSET) >> SPU2_AAD2_OFFSET_SHIFT);
	FUNC0("  Payload offset %llu\n",
		   (ctrl2 & SPU2_PL_OFFSET) >> SPU2_PL_OFFSET_SHIFT);
}