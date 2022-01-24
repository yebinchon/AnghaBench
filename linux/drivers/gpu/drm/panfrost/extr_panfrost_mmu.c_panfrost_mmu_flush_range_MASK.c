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
struct panfrost_mmu {scalar_t__ as; } ;
struct panfrost_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS_COMMAND_FLUSH_PT ; 
 int /*<<< orphan*/  FUNC0 (struct panfrost_device*,struct panfrost_mmu*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct panfrost_device *pfdev,
				     struct panfrost_mmu *mmu,
				     u64 iova, size_t size)
{
	if (mmu->as < 0)
		return;

	FUNC2(pfdev->dev);

	/* Flush the PTs only if we're already awake */
	if (FUNC1(pfdev->dev))
		FUNC0(pfdev, mmu, iova, size, AS_COMMAND_FLUSH_PT);

	FUNC3(pfdev->dev);
}