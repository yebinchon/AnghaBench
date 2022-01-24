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
typedef  int uint32_t ;
typedef  scalar_t__ u8 ;

/* Variables and functions */
 int FSI_SMODE_ECRC ; 
 int FSI_SMODE_WSC ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static uint32_t FUNC4(int id, u8 t_senddly, u8 t_echodly)
{
	return FSI_SMODE_WSC | FSI_SMODE_ECRC
		| FUNC3(id)
		| FUNC0(t_echodly - 1) | FUNC2(t_senddly - 1)
		| FUNC1(0x8);
}