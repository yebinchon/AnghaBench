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
typedef  scalar_t__ u32 ;
struct hfi1_packet {scalar_t__ rhqoff; } ;
struct hfi1_ctxtdata {scalar_t__ head; } ;

/* Variables and functions */
 int RCV_PKT_DONE ; 
 int RCV_PKT_OK ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_packet*) ; 
 scalar_t__ FUNC1 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_ctxtdata*,struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_ctxtdata*,struct hfi1_packet*) ; 
 int FUNC4 (struct hfi1_packet*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(struct hfi1_ctxtdata *rcd, int thread)
{
	u32 hdrqtail;
	int last = RCV_PKT_OK;
	struct hfi1_packet packet;

	FUNC2(rcd, &packet);
	hdrqtail = FUNC1(rcd);
	if (packet.rhqoff == hdrqtail) {
		last = RCV_PKT_DONE;
		goto bail;
	}
	FUNC7();  /* prevent speculative reads of dma'ed hdrq */

	FUNC3(rcd, &packet);

	while (last == RCV_PKT_OK) {
		last = FUNC4(&packet, thread);
		if (packet.rhqoff == hdrqtail)
			last = RCV_PKT_DONE;
		FUNC6(last, &packet);
	}
	FUNC5(&packet);
	rcd->head = packet.rhqoff;
bail:
	FUNC0(&packet);
	return last;
}