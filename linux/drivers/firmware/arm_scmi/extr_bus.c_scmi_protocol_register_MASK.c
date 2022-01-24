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
typedef  int /*<<< orphan*/  scmi_prot_init_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  protocol_lock ; 
 int /*<<< orphan*/  scmi_protocols ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(int protocol_id, scmi_prot_init_fn_t fn)
{
	int ret;

	FUNC2(&protocol_lock);
	ret = FUNC0(&scmi_protocols, fn, protocol_id, protocol_id + 1,
			GFP_ATOMIC);
	FUNC3(&protocol_lock);
	if (ret != protocol_id)
		FUNC1("unable to allocate SCMI idr slot, err %d\n", ret);

	return ret;
}