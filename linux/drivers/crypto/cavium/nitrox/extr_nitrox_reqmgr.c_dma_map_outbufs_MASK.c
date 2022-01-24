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
struct se_crypto_request {int /*<<< orphan*/ * dst; } ;
struct TYPE_2__ {int sgmap_cnt; int /*<<< orphan*/ * sg; } ;
struct nitrox_softreq {TYPE_1__ out; int /*<<< orphan*/  ndev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EINVAL ; 
 int FUNC1 (struct nitrox_softreq*,TYPE_1__*,int) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct nitrox_softreq *sr,
			   struct se_crypto_request *req)
{
	struct device *dev = FUNC0(sr->ndev);
	int nents, ret = 0;

	nents = FUNC2(dev, req->dst, FUNC4(req->dst),
			   DMA_BIDIRECTIONAL);
	if (!nents)
		return -EINVAL;

	sr->out.sg = req->dst;
	sr->out.sgmap_cnt = nents;
	ret = FUNC1(sr, &sr->out, sr->out.sgmap_cnt);
	if (ret)
		goto outcomp_map_err;

	return 0;

outcomp_map_err:
	FUNC3(dev, req->dst, nents, DMA_BIDIRECTIONAL);
	sr->out.sgmap_cnt = 0;
	sr->out.sg = NULL;
	return ret;
}