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
struct TYPE_3__ {int /*<<< orphan*/  mpa_len; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;
struct siw_rx_stream {TYPE_2__ hdr; int /*<<< orphan*/  fpdu_part_rem; } ;
struct siw_qp {struct siw_rx_stream rx_stream; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct siw_qp*) ; 

int FUNC3(struct siw_qp *qp)
{
	struct siw_rx_stream *srx = &qp->rx_stream;

	if (!srx->fpdu_part_rem)
		return 0;

	FUNC1("siw: [QP %u]: rreq with mpa len %d\n", FUNC2(qp),
		FUNC0(srx->hdr.ctrl.mpa_len));

	return -EPROTO;
}