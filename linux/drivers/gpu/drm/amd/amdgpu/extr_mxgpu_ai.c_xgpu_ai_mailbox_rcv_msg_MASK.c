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
struct amdgpu_device {int dummy; } ;
typedef  enum idh_event { ____Placeholder_idh_event } idh_event ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  NBIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmBIF_BX_PF0_MAILBOX_MSGBUF_RCV_DW0 ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev,
				   enum idh_event event)
{
	u32 reg;

	reg = FUNC0(FUNC1(NBIO, 0,
					     mmBIF_BX_PF0_MAILBOX_MSGBUF_RCV_DW0));
	if (reg != event)
		return -ENOENT;

	FUNC2(adev);

	return 0;
}