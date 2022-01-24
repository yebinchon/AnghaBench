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
struct hisi_zip_req {int dummy; } ;
struct hisi_zip_qp_ctx {TYPE_2__* qp; } ;
struct hisi_zip_ctx {struct hisi_zip_qp_ctx* qp_ctx; } ;
struct TYPE_3__ {int /*<<< orphan*/  tfm; } ;
struct acomp_req {int /*<<< orphan*/  src; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  req_type; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 scalar_t__ FUNC0 (struct hisi_zip_req*) ; 
 int FUNC1 (struct hisi_zip_req*) ; 
 size_t QPC_DECOMP ; 
 struct hisi_zip_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hisi_zip_req* FUNC4 (struct acomp_req*,struct hisi_zip_qp_ctx*,size_t,int) ; 
 int FUNC5 (struct hisi_zip_req*,struct hisi_zip_qp_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct hisi_zip_qp_ctx*,struct hisi_zip_req*) ; 

__attribute__((used)) static int FUNC7(struct acomp_req *acomp_req)
{
	struct hisi_zip_ctx *ctx = FUNC2(acomp_req->base.tfm);
	struct hisi_zip_qp_ctx *qp_ctx = &ctx->qp_ctx[QPC_DECOMP];
	struct hisi_zip_req *req;
	size_t head_size;
	int ret;

	head_size = FUNC3(acomp_req->src, qp_ctx->qp->req_type);

	req = FUNC4(acomp_req, qp_ctx, head_size, false);
	if (FUNC0(req))
		return FUNC1(req);

	ret = FUNC5(req, qp_ctx);
	if (ret != -EINPROGRESS)
		FUNC6(qp_ctx, req);

	return ret;
}