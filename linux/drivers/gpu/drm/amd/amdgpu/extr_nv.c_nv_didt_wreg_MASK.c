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
typedef  int /*<<< orphan*/  u32 ;
struct amdgpu_device {int /*<<< orphan*/  didt_idx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GC ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmDIDT_IND_DATA ; 
 int /*<<< orphan*/  mmDIDT_IND_INDEX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev, u32 reg, u32 v)
{
	unsigned long flags, address, data;

	address = FUNC0(GC, 0, mmDIDT_IND_INDEX);
	data = FUNC0(GC, 0, mmDIDT_IND_DATA);

	FUNC2(&adev->didt_idx_lock, flags);
	FUNC1(address, (reg));
	FUNC1(data, (v));
	FUNC3(&adev->didt_idx_lock, flags);
}