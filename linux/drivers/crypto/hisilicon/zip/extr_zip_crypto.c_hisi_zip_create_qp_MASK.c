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
struct hisi_zip_qp_ctx {struct hisi_qp* qp; } ;
struct hisi_qp {int req_type; struct hisi_zip_qp_ctx* qp_ctx; } ;
struct hisi_qm {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hisi_qp*) ; 
 int FUNC1 (struct hisi_qp*) ; 
 struct hisi_qp* FUNC2 (struct hisi_qm*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_qp*) ; 
 int FUNC4 (struct hisi_qp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hisi_qm *qm, struct hisi_zip_qp_ctx *ctx,
			      int alg_type, int req_type)
{
	struct hisi_qp *qp;
	int ret;

	qp = FUNC2(qm, alg_type);
	if (FUNC0(qp))
		return FUNC1(qp);

	qp->req_type = req_type;
	qp->qp_ctx = ctx;
	ctx->qp = qp;

	ret = FUNC4(qp, 0);
	if (ret < 0)
		goto err_release_qp;

	return 0;

err_release_qp:
	FUNC3(qp);
	return ret;
}