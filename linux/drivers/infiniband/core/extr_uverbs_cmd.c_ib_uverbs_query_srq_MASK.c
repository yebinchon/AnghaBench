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
struct ib_uverbs_query_srq_resp {int /*<<< orphan*/  srq_limit; int /*<<< orphan*/  max_sge; int /*<<< orphan*/  max_wr; } ;
struct ib_uverbs_query_srq {int /*<<< orphan*/  srq_handle; } ;
struct ib_srq_attr {int /*<<< orphan*/  srq_limit; int /*<<< orphan*/  max_sge; int /*<<< orphan*/  max_wr; } ;
struct ib_srq {int dummy; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UVERBS_OBJECT_SRQ ; 
 int FUNC0 (struct ib_srq*,struct ib_srq_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_uverbs_query_srq_resp*,int /*<<< orphan*/ ,int) ; 
 struct ib_srq* FUNC2 (struct ib_srq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uverbs_attr_bundle*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_srq*) ; 
 int FUNC4 (struct uverbs_attr_bundle*,struct ib_uverbs_query_srq*,int) ; 
 int FUNC5 (struct uverbs_attr_bundle*,struct ib_uverbs_query_srq_resp*,int) ; 

__attribute__((used)) static int FUNC6(struct uverbs_attr_bundle *attrs)
{
	struct ib_uverbs_query_srq      cmd;
	struct ib_uverbs_query_srq_resp resp;
	struct ib_srq_attr              attr;
	struct ib_srq                   *srq;
	int                             ret;

	ret = FUNC4(attrs, &cmd, sizeof(cmd));
	if (ret)
		return ret;

	srq = FUNC2(srq, UVERBS_OBJECT_SRQ, cmd.srq_handle, attrs);
	if (!srq)
		return -EINVAL;

	ret = FUNC0(srq, &attr);

	FUNC3(srq);

	if (ret)
		return ret;

	FUNC1(&resp, 0, sizeof resp);

	resp.max_wr    = attr.max_wr;
	resp.max_sge   = attr.max_sge;
	resp.srq_limit = attr.srq_limit;

	return FUNC5(attrs, &resp, sizeof(resp));
}