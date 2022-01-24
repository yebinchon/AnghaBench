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
 int SPU2_PL_LEN ; 
 int SPU2_TLS_LEN ; 
 int SPU2_TLS_LEN_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static void FUNC1(u64 ctrl3)
{
	FUNC0(" FMD CTRL3 %#16llx\n", ctrl3);

	FUNC0("  Payload length %llu bytes\n", ctrl3 & SPU2_PL_LEN);
	FUNC0("  TLS length %llu bytes\n",
		   (ctrl3 & SPU2_TLS_LEN) >> SPU2_TLS_LEN_SHIFT);
}