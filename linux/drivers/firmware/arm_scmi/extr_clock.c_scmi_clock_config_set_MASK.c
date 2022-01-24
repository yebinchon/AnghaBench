#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct scmi_clock_set_config* buf; } ;
struct scmi_xfer {TYPE_1__ tx; } ;
struct scmi_handle {int dummy; } ;
struct scmi_clock_set_config {void* attributes; void* id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_CONFIG_SET ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_CLOCK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int FUNC2 (struct scmi_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct scmi_xfer**) ; 
 int /*<<< orphan*/  FUNC3 (struct scmi_handle const*,struct scmi_xfer*) ; 

__attribute__((used)) static int
FUNC4(const struct scmi_handle *handle, u32 clk_id, u32 config)
{
	int ret;
	struct scmi_xfer *t;
	struct scmi_clock_set_config *cfg;

	ret = FUNC2(handle, CLOCK_CONFIG_SET, SCMI_PROTOCOL_CLOCK,
				 sizeof(*cfg), 0, &t);
	if (ret)
		return ret;

	cfg = t->tx.buf;
	cfg->id = FUNC0(clk_id);
	cfg->attributes = FUNC0(config);

	ret = FUNC1(handle, t);

	FUNC3(handle, t);
	return ret;
}