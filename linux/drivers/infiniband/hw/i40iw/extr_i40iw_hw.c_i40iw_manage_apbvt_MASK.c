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
typedef  int /*<<< orphan*/  u16 ;
struct i40iw_cm_core {int /*<<< orphan*/  apbvt_lock; int /*<<< orphan*/  ports_in_use; } ;
struct i40iw_device {struct i40iw_cm_core cm_core; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i40iw_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct i40iw_cm_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

enum i40iw_status_code FUNC6(struct i40iw_device *iwdev,
					  u16 accel_local_port,
					  bool add_port)
{
	struct i40iw_cm_core *cm_core = &iwdev->cm_core;
	enum i40iw_status_code status;
	unsigned long flags;
	bool in_use;

	/* apbvt_lock is held across CQP delete APBVT OP (non-waiting) to
	 * protect against race where add APBVT CQP can race ahead of the delete
	 * APBVT for same port.
	 */
	if (add_port) {
		FUNC4(&cm_core->apbvt_lock, flags);
		in_use = FUNC1(accel_local_port,
					    cm_core->ports_in_use);
		FUNC5(&cm_core->apbvt_lock, flags);
		if (in_use)
			return 0;
		return FUNC2(iwdev, accel_local_port,
						  true);
	} else {
		FUNC4(&cm_core->apbvt_lock, flags);
		in_use = FUNC3(cm_core, accel_local_port);
		if (in_use) {
			FUNC5(&cm_core->apbvt_lock, flags);
			return 0;
		}
		FUNC0(accel_local_port, cm_core->ports_in_use);
		status = FUNC2(iwdev, accel_local_port,
						    false);
		FUNC5(&cm_core->apbvt_lock, flags);
		return status;
	}
}