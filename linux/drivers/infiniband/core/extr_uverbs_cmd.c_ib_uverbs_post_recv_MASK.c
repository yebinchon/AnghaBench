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
struct uverbs_req_iter {int dummy; } ;
struct uverbs_attr_bundle {int dummy; } ;
struct ib_uverbs_post_recv_resp {int /*<<< orphan*/  bad_wr; } ;
struct ib_uverbs_post_recv {int /*<<< orphan*/  qp_handle; int /*<<< orphan*/  sge_count; int /*<<< orphan*/  wqe_size; int /*<<< orphan*/  wr_count; } ;
typedef  struct ib_recv_wr {struct ib_recv_wr const* next; } const ib_recv_wr ;
struct ib_qp {int /*<<< orphan*/  real_qp; TYPE_2__* device; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_3__ {int (* post_recv ) (int /*<<< orphan*/ ,struct ib_recv_wr const*,struct ib_recv_wr const**) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct ib_recv_wr const*) ; 
 int FUNC1 (struct ib_recv_wr const*) ; 
 int /*<<< orphan*/  UVERBS_OBJECT_QP ; 
 struct ib_recv_wr const* FUNC2 (struct uverbs_req_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_recv_wr const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ib_recv_wr const*,struct ib_recv_wr const**) ; 
 struct ib_qp* FUNC5 (struct ib_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uverbs_attr_bundle*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_qp*) ; 
 int FUNC7 (struct uverbs_attr_bundle*,struct uverbs_req_iter*,struct ib_uverbs_post_recv*,int) ; 
 int FUNC8 (struct uverbs_attr_bundle*,struct ib_uverbs_post_recv_resp*,int) ; 

__attribute__((used)) static int FUNC9(struct uverbs_attr_bundle *attrs)
{
	struct ib_uverbs_post_recv      cmd;
	struct ib_uverbs_post_recv_resp resp;
	struct ib_recv_wr              *wr, *next;
	const struct ib_recv_wr	       *bad_wr;
	struct ib_qp                   *qp;
	int ret, ret2;
	struct uverbs_req_iter iter;

	ret = FUNC7(attrs, &iter, &cmd, sizeof(cmd));
	if (ret)
		return ret;

	wr = FUNC2(&iter, cmd.wr_count, cmd.wqe_size,
				       cmd.sge_count);
	if (FUNC0(wr))
		return FUNC1(wr);

	qp = FUNC5(qp, UVERBS_OBJECT_QP, cmd.qp_handle, attrs);
	if (!qp) {
		ret = -EINVAL;
		goto out;
	}

	resp.bad_wr = 0;
	ret = qp->device->ops.post_recv(qp->real_qp, wr, &bad_wr);

	FUNC6(qp);
	if (ret) {
		for (next = wr; next; next = next->next) {
			++resp.bad_wr;
			if (next == bad_wr)
				break;
		}
	}

	ret2 = FUNC8(attrs, &resp, sizeof(resp));
	if (ret2)
		ret = ret2;
out:
	while (wr) {
		next = wr->next;
		FUNC3(wr);
		wr = next;
	}

	return ret;
}