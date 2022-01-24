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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

u8 *FUNC4(u64 size)
{
	u8 *ptr;

	ptr = (u8 *)FUNC0((GFP_KERNEL | GFP_DMA),
					FUNC1(size));

	if (!ptr)
		return NULL;

	FUNC2(ptr, 0, size);

	FUNC3("Data buffer allocation success\n");
	return ptr;
}