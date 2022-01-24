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
typedef  void* u32 ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int CAAM_CMD_SZ ; 
 int CAAM_PTR_SZ ; 
 scalar_t__ FUNC0 (void*) ; 
 int caam_ptr_sz ; 
 void* FUNC1 (scalar_t__) ; 
 void* FUNC2 (void*) ; 
 scalar_t__ FUNC3 (void** const) ; 

__attribute__((used)) static inline void FUNC4(u32 * const desc, dma_addr_t ptr)
{
	if (caam_ptr_sz == sizeof(dma_addr_t)) {
		dma_addr_t *offset = (dma_addr_t *)FUNC3(desc);

		*offset = FUNC2(ptr);
	} else {
		u32 *offset = (u32 *)FUNC3(desc);

		*offset = FUNC2(ptr);
	}

	(*desc) = FUNC1(FUNC0(*desc) +
				CAAM_PTR_SZ / CAAM_CMD_SZ);
}