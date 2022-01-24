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
struct hisi_zip_req_q {void* req_bitmap; void* q; int /*<<< orphan*/  size; int /*<<< orphan*/  req_lock; } ;
struct hisi_zip_req {int dummy; } ;
struct hisi_zip_ctx {TYPE_1__* qp_ctx; } ;
struct TYPE_2__ {struct hisi_zip_req_q req_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZIP_CTX_Q_NUM ; 
 int /*<<< orphan*/  QM_Q_DEPTH ; 
 size_t QPC_COMP ; 
 size_t QPC_DECOMP ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hisi_zip_ctx *ctx)
{
	struct hisi_zip_req_q *req_q;
	int i, ret;

	for (i = 0; i < HZIP_CTX_Q_NUM; i++) {
		req_q = &ctx->qp_ctx[i].req_q;
		req_q->size = QM_Q_DEPTH;

		req_q->req_bitmap = FUNC1(FUNC0(req_q->size),
					    sizeof(long), GFP_KERNEL);
		if (!req_q->req_bitmap) {
			ret = -ENOMEM;
			if (i == 0)
				return ret;

			goto err_free_loop0;
		}
		FUNC3(&req_q->req_lock);

		req_q->q = FUNC1(req_q->size, sizeof(struct hisi_zip_req),
				   GFP_KERNEL);
		if (!req_q->q) {
			ret = -ENOMEM;
			if (i == 0)
				goto err_free_bitmap;
			else
				goto err_free_loop1;
		}
	}

	return 0;

err_free_loop1:
	FUNC2(ctx->qp_ctx[QPC_DECOMP].req_q.req_bitmap);
err_free_loop0:
	FUNC2(ctx->qp_ctx[QPC_COMP].req_q.q);
err_free_bitmap:
	FUNC2(ctx->qp_ctx[QPC_COMP].req_q.req_bitmap);
	return ret;
}