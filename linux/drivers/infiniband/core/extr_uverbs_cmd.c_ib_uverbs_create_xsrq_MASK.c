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
struct uverbs_attr_bundle {int /*<<< orphan*/  driver_udata; } ;
struct ib_uverbs_create_xsrq {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int FUNC0 (struct uverbs_attr_bundle*,struct ib_uverbs_create_xsrq*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct uverbs_attr_bundle*,struct ib_uverbs_create_xsrq*,int) ; 

__attribute__((used)) static int FUNC2(struct uverbs_attr_bundle *attrs)
{
	struct ib_uverbs_create_xsrq     cmd;
	int ret;

	ret = FUNC1(attrs, &cmd, sizeof(cmd));
	if (ret)
		return ret;

	return FUNC0(attrs, &cmd, &attrs->driver_udata);
}