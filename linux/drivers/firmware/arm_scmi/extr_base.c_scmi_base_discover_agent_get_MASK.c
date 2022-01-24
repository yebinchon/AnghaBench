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
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  buf; } ;
struct scmi_xfer {TYPE_2__ rx; TYPE_1__ tx; } ;
struct scmi_handle {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  BASE_DISCOVER_AGENT ; 
 int /*<<< orphan*/  SCMI_MAX_STR_SIZE ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_BASE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int FUNC2 (struct scmi_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct scmi_xfer**) ; 
 int /*<<< orphan*/  FUNC3 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct scmi_handle *handle,
					int id, char *name)
{
	int ret;
	struct scmi_xfer *t;

	ret = FUNC2(handle, BASE_DISCOVER_AGENT,
				 SCMI_PROTOCOL_BASE, sizeof(__le32),
				 SCMI_MAX_STR_SIZE, &t);
	if (ret)
		return ret;

	FUNC0(id, t->tx.buf);

	ret = FUNC1(handle, t);
	if (!ret)
		FUNC4(name, t->rx.buf, SCMI_MAX_STR_SIZE);

	FUNC3(handle, t);

	return ret;
}