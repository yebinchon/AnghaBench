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
struct scmi_xfer {int dummy; } ;
struct scmi_info {int /*<<< orphan*/  tx_minfo; } ;
struct scmi_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct scmi_xfer*) ; 
 struct scmi_info* FUNC1 (struct scmi_handle const*) ; 

void FUNC2(const struct scmi_handle *handle, struct scmi_xfer *xfer)
{
	struct scmi_info *info = FUNC1(handle);

	FUNC0(&info->tx_minfo, xfer);
}