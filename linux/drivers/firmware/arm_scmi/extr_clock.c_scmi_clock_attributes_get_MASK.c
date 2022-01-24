#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {struct scmi_msg_resp_clock_attributes* buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
struct scmi_xfer {TYPE_1__ rx; TYPE_2__ tx; } ;
struct scmi_msg_resp_clock_attributes {int /*<<< orphan*/  name; } ;
struct scmi_handle {int dummy; } ;
struct scmi_clock_info {char* name; } ;
typedef  int /*<<< orphan*/  clk_id ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_ATTRIBUTES ; 
 int /*<<< orphan*/  SCMI_MAX_STR_SIZE ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_CLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int FUNC2 (struct scmi_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct scmi_xfer**) ; 
 int /*<<< orphan*/  FUNC3 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct scmi_handle *handle,
				     u32 clk_id, struct scmi_clock_info *clk)
{
	int ret;
	struct scmi_xfer *t;
	struct scmi_msg_resp_clock_attributes *attr;

	ret = FUNC2(handle, CLOCK_ATTRIBUTES, SCMI_PROTOCOL_CLOCK,
				 sizeof(clk_id), sizeof(*attr), &t);
	if (ret)
		return ret;

	FUNC0(clk_id, t->tx.buf);
	attr = t->rx.buf;

	ret = FUNC1(handle, t);
	if (!ret)
		FUNC4(clk->name, attr->name, SCMI_MAX_STR_SIZE);
	else
		clk->name[0] = '\0';

	FUNC3(handle, t);
	return ret;
}