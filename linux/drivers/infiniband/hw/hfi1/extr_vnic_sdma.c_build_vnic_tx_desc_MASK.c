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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct vnic_txreq {int plen; int /*<<< orphan*/  pbc_val; int /*<<< orphan*/  txreq; TYPE_1__* skb; } ;
struct sdma_engine {int /*<<< orphan*/  dd; } ;
struct TYPE_2__ {int len; } ;

/* Variables and functions */
 int FUNC0 (struct sdma_engine*,struct vnic_txreq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  vnic_sdma_complete ; 

__attribute__((used)) static int FUNC5(struct sdma_engine *sde,
			      struct vnic_txreq *tx,
			      u64 pbc)
{
	int ret = 0;
	u16 hdrbytes = 2 << 2;  /* PBC */

	ret = FUNC3(
		&tx->txreq,
		0,
		hdrbytes + tx->skb->len + tx->plen,
		0,
		0,
		NULL,
		0,
		vnic_sdma_complete);
	if (FUNC4(ret))
		goto bail_txadd;

	/* add pbc */
	tx->pbc_val = FUNC1(pbc);
	ret = FUNC2(
		sde->dd,
		&tx->txreq,
		&tx->pbc_val,
		hdrbytes);
	if (FUNC4(ret))
		goto bail_txadd;

	/* add the ulp payload */
	ret = FUNC0(sde, tx);
bail_txadd:
	return ret;
}