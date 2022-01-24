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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARCH_DMA_ADDR_T_64BIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int caam_ptr_sz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u64 FUNC3(u64 value)
{
	if (FUNC0(CONFIG_ARCH_DMA_ADDR_T_64BIT) &&
	    caam_ptr_sz == sizeof(u64))
		return FUNC2(value);
	else
		return FUNC1(value);
}