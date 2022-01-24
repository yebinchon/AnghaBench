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
struct iw_cm_id {int /*<<< orphan*/  (* rem_ref ) (struct iw_cm_id*) ;int /*<<< orphan*/  provider_data; int /*<<< orphan*/  device; } ;
struct i40iw_device {int /*<<< orphan*/  cm_core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iw_cm_id*) ; 
 struct i40iw_device* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct iw_cm_id *cm_id)
{
	struct i40iw_device *iwdev;

	iwdev = FUNC3(cm_id->device);
	if (cm_id->provider_data)
		FUNC0(&iwdev->cm_core, cm_id->provider_data, true);
	else
		FUNC1("cm_id->provider_data was NULL\n");

	cm_id->rem_ref(cm_id);

	return 0;
}