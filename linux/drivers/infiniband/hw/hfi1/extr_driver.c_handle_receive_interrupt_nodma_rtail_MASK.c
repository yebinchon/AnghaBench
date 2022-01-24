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
typedef  int u32 ;
struct hfi1_packet {int /*<<< orphan*/  rhqoff; int /*<<< orphan*/  rhf; } ;
struct hfi1_ctxtdata {int seq_cnt; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int RCV_PKT_DONE ; 
 int RCV_PKT_OK ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_ctxtdata*,struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_ctxtdata*,struct hfi1_packet*) ; 
 int FUNC3 (struct hfi1_packet*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct hfi1_packet*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct hfi1_ctxtdata *rcd, int thread)
{
	u32 seq;
	int last = RCV_PKT_OK;
	struct hfi1_packet packet;

	FUNC1(rcd, &packet);
	seq = FUNC6(packet.rhf);
	if (seq != rcd->seq_cnt) {
		last = RCV_PKT_DONE;
		goto bail;
	}

	FUNC2(rcd, &packet);

	while (last == RCV_PKT_OK) {
		last = FUNC3(&packet, thread);
		seq = FUNC6(packet.rhf);
		if (++rcd->seq_cnt > 13)
			rcd->seq_cnt = 1;
		if (seq != rcd->seq_cnt)
			last = RCV_PKT_DONE;
		FUNC5(last, &packet);
	}
	FUNC4(&packet);
	rcd->head = packet.rhqoff;
bail:
	FUNC0(&packet);
	return last;
}