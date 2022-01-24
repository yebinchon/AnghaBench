#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct hisi_zip_ctx {TYPE_1__* qp_ctx; } ;
struct hisi_qm {int dummy; } ;
struct hisi_zip {struct hisi_qm qm; } ;
struct TYPE_3__ {struct hisi_zip* zip_dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int HZIP_CTX_Q_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hisi_zip* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hisi_qm*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct hisi_zip_ctx *hisi_zip_ctx, u8 req_type)
{
	struct hisi_zip *hisi_zip;
	struct hisi_qm *qm;
	int ret, i, j;

	/* find the proper zip device */
	hisi_zip = FUNC1(FUNC0(FUNC5()));
	if (!hisi_zip) {
		FUNC4("Failed to find a proper ZIP device!\n");
		return -ENODEV;
	}
	qm = &hisi_zip->qm;

	for (i = 0; i < HZIP_CTX_Q_NUM; i++) {
		/* alg_type = 0 for compress, 1 for decompress in hw sqe */
		ret = FUNC2(qm, &hisi_zip_ctx->qp_ctx[i], i,
					 req_type);
		if (ret)
			goto err;

		hisi_zip_ctx->qp_ctx[i].zip_dev = hisi_zip;
	}

	return 0;
err:
	for (j = i - 1; j >= 0; j--)
		FUNC3(&hisi_zip_ctx->qp_ctx[j]);

	return ret;
}