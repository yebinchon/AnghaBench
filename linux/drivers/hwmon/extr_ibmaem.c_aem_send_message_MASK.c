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
struct aem_ipmi_data {int /*<<< orphan*/  bmc_device; int /*<<< orphan*/  tx_message; int /*<<< orphan*/  tx_msgid; int /*<<< orphan*/  address; int /*<<< orphan*/  user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct aem_ipmi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct aem_ipmi_data *data)
{
	int err;

	err = FUNC2(&data->address, sizeof(data->address));
	if (err)
		goto out;

	data->tx_msgid++;
	err = FUNC1(data->user, &data->address, data->tx_msgid,
				   &data->tx_message, data, 0, 0, 0);
	if (err)
		goto out1;

	return 0;
out1:
	FUNC0(data->bmc_device, "request_settime=%x\n", err);
	return err;
out:
	FUNC0(data->bmc_device, "validate_addr=%x\n", err);
	return err;
}