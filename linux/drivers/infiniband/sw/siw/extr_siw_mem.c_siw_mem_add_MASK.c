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
struct xa_limit {int dummy; } ;
struct siw_mem {int stag; } ;
struct siw_device {int /*<<< orphan*/  mem_xa; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct xa_limit FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct siw_mem*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*,struct siw_mem*,struct xa_limit,int*,int /*<<< orphan*/ ) ; 

int FUNC4(struct siw_device *sdev, struct siw_mem *m)
{
	struct xa_limit limit = FUNC0(1, 0x00ffffff);
	u32 id, next;

	FUNC1(&next, 4);
	next &= 0x00ffffff;

	if (FUNC3(&sdev->mem_xa, &id, m, limit, &next,
	    GFP_KERNEL) < 0)
		return -ENOMEM;

	/* Set the STag index part */
	m->stag = id << 8;

	FUNC2(m, "new MEM object\n");

	return 0;
}