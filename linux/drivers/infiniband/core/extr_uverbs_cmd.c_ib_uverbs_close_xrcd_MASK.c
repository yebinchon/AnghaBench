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
struct uverbs_attr_bundle {int dummy; } ;
struct ib_uverbs_close_xrcd {int /*<<< orphan*/  xrcd_handle; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  UVERBS_OBJECT_XRCD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uverbs_attr_bundle*) ; 
 int FUNC1 (struct uverbs_attr_bundle*,struct ib_uverbs_close_xrcd*,int) ; 

__attribute__((used)) static int FUNC2(struct uverbs_attr_bundle *attrs)
{
	struct ib_uverbs_close_xrcd cmd;
	int ret;

	ret = FUNC1(attrs, &cmd, sizeof(cmd));
	if (ret)
		return ret;

	return FUNC0(UVERBS_OBJECT_XRCD, cmd.xrcd_handle, attrs);
}