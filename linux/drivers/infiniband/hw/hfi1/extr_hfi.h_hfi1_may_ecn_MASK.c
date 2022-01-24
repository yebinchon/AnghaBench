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
struct hfi1_packet {scalar_t__ etype; int /*<<< orphan*/  ohdr; int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 scalar_t__ RHF_RCV_TYPE_BYPASS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC4(struct hfi1_packet *pkt)
{
	bool fecn, becn;

	if (pkt->etype == RHF_RCV_TYPE_BYPASS) {
		fecn = FUNC1(pkt->hdr);
		becn = FUNC0(pkt->hdr);
	} else {
		fecn = FUNC3(pkt->ohdr);
		becn = FUNC2(pkt->ohdr);
	}
	return fecn || becn;
}