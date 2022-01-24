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
struct amdgpu_device {int dummy; } ;
typedef  enum idh_request { ____Placeholder_idh_request } idh_request ;

/* Variables and functions */
 int /*<<< orphan*/  MAILBOX_MSGBUF_TRN_DW0 ; 
 int /*<<< orphan*/  MSGBUF_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmMAILBOX_MSGBUF_TRN_DW0 ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev,
				      enum idh_request req)
{
	u32 reg;

	reg = FUNC1(mmMAILBOX_MSGBUF_TRN_DW0);
	reg = FUNC0(reg, MAILBOX_MSGBUF_TRN_DW0,
			    MSGBUF_DATA, req);
	FUNC2(mmMAILBOX_MSGBUF_TRN_DW0, reg);

	FUNC3(adev, true);
}