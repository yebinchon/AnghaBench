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
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef  enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;

/* Variables and functions */
 int AMDGPU_IRQ_STATE_ENABLE ; 
 int /*<<< orphan*/  MAILBOX_INT_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VALID_INT_EN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmMAILBOX_INT_CNTL ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev,
				       struct amdgpu_irq_src *src,
				       unsigned type,
				       enum amdgpu_interrupt_state state)
{
	u32 tmp = FUNC1(mmMAILBOX_INT_CNTL);

	tmp = FUNC0(tmp, MAILBOX_INT_CNTL, VALID_INT_EN,
			    (state == AMDGPU_IRQ_STATE_ENABLE) ? 1 : 0);
	FUNC2(mmMAILBOX_INT_CNTL, tmp);

	return 0;
}