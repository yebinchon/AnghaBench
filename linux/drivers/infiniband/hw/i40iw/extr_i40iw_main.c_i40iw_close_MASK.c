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
struct i40iw_device {int closing; int reset; int /*<<< orphan*/  virtchnl_wq; } ;
struct i40iw_handler {struct i40iw_device device; } ;
struct i40e_info {int dummy; } ;
struct i40e_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_device*) ; 
 struct i40iw_handler* FUNC3 (struct i40e_info*) ; 

__attribute__((used)) static void FUNC4(struct i40e_info *ldev, struct i40e_client *client, bool reset)
{
	struct i40iw_device *iwdev;
	struct i40iw_handler *hdl;

	hdl = FUNC3(ldev);
	if (!hdl)
		return;

	iwdev = &hdl->device;
	iwdev->closing = true;

	if (reset)
		iwdev->reset = true;

	FUNC1(iwdev, NULL, NULL, true);
	FUNC0(iwdev->virtchnl_wq);
	FUNC2(iwdev);
}