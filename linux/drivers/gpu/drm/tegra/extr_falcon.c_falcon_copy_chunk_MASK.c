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
typedef  unsigned long u32 ;
struct falcon {int dummy; } ;
typedef  unsigned long phys_addr_t ;
typedef  enum falcon_memory { ____Placeholder_falcon_memory } falcon_memory ;

/* Variables and functions */
 int /*<<< orphan*/  FALCON_DMATRFCMD ; 
 unsigned long FALCON_DMATRFCMD_IMEM ; 
 unsigned long FALCON_DMATRFCMD_SIZE_256B ; 
 int /*<<< orphan*/  FALCON_DMATRFFBOFFS ; 
 int /*<<< orphan*/  FALCON_DMATRFMOFFS ; 
 int FALCON_MEMORY_IMEM ; 
 int FUNC0 (struct falcon*) ; 
 int /*<<< orphan*/  FUNC1 (struct falcon*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct falcon *falcon,
			     phys_addr_t base,
			     unsigned long offset,
			     enum falcon_memory target)
{
	u32 cmd = FALCON_DMATRFCMD_SIZE_256B;

	if (target == FALCON_MEMORY_IMEM)
		cmd |= FALCON_DMATRFCMD_IMEM;

	FUNC1(falcon, offset, FALCON_DMATRFMOFFS);
	FUNC1(falcon, base, FALCON_DMATRFFBOFFS);
	FUNC1(falcon, cmd, FALCON_DMATRFCMD);

	return FUNC0(falcon);
}