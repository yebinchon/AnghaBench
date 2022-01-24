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
typedef  int /*<<< orphan*/  u32 ;
struct panfrost_mmu {int /*<<< orphan*/  as; } ;
struct panfrost_device {int /*<<< orphan*/  as_lock; } ;

/* Variables and functions */
 int FUNC0 (struct panfrost_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct panfrost_device *pfdev,
			       struct panfrost_mmu *mmu,
			       u64 iova, size_t size, u32 op)
{
	int ret;

	FUNC1(&pfdev->as_lock);
	ret = FUNC0(pfdev, mmu->as, iova, size, op);
	FUNC2(&pfdev->as_lock);
	return ret;
}