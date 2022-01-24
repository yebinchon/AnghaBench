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
typedef  int u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct panfrost_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS_COMMAND_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PAGE_MASK ; 
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct panfrost_device*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct panfrost_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct panfrost_device *pfdev, u32 as_nr,
			u64 iova, size_t size)
{
	u8 region_width;
	u64 region = iova & PAGE_MASK;
	/*
	 * fls returns:
	 * 1 .. 32
	 *
	 * 10 + fls(num_pages)
	 * results in the range (11 .. 42)
	 */

	size = FUNC4(size, PAGE_SIZE);

	region_width = 10 + FUNC2(size >> PAGE_SHIFT);
	if ((size >> PAGE_SHIFT) != (1ul << (region_width - 11))) {
		/* not pow2, so must go up to the next pow2 */
		region_width += 1;
	}
	region |= region_width;

	/* Lock the region that needs to be updated */
	FUNC3(pfdev, FUNC1(as_nr), region & 0xFFFFFFFFUL);
	FUNC3(pfdev, FUNC0(as_nr), (region >> 32) & 0xFFFFFFFFUL);
	FUNC5(pfdev, as_nr, AS_COMMAND_LOCK);
}