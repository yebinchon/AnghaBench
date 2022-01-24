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
typedef  int phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 

__attribute__((used)) static unsigned int FUNC2(phys_addr_t addrspace_size)
{
	/* Bug if not a power of 2 */
	FUNC0(addrspace_size & (addrspace_size - 1));

	/* window size is 2^(WSE+1) bytes */
	return FUNC1(addrspace_size) - 2;
}