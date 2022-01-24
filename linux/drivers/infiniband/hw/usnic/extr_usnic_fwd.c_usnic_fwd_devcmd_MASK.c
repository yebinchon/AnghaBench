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
struct usnic_fwd_dev {int /*<<< orphan*/  lock; } ;
typedef  enum vnic_devcmd_cmd { ____Placeholder_vnic_devcmd_cmd } vnic_devcmd_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct usnic_fwd_dev*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct usnic_fwd_dev *ufdev, int vnic_idx,
				enum vnic_devcmd_cmd cmd, u64 *a0, u64 *a1)
{
	int status;

	FUNC0(&ufdev->lock);
	status = FUNC2(ufdev, vnic_idx, cmd, a0, a1);
	FUNC1(&ufdev->lock);

	return status;
}