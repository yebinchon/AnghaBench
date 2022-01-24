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
typedef  int u64 ;
struct fw_request {int /*<<< orphan*/  length; } ;
struct fw_packet {scalar_t__ ack; int* header; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 scalar_t__ ACK_COMPLETE ; 
 scalar_t__ ACK_PENDING ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct fw_request* FUNC3 (struct fw_card*,struct fw_packet*) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_card*,struct fw_packet*) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_card*,struct fw_packet*,struct fw_request*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_card*,struct fw_packet*,struct fw_request*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long long,int /*<<< orphan*/ ) ; 

void FUNC8(struct fw_card *card, struct fw_packet *p)
{
	struct fw_request *request;
	unsigned long long offset;

	if (p->ack != ACK_PENDING && p->ack != ACK_COMPLETE)
		return;

	if (FUNC2(FUNC1(p->header[0]))) {
		FUNC4(card, p);
		return;
	}

	request = FUNC3(card, p);
	if (request == NULL) {
		/* FIXME: send statically allocated busy packet. */
		return;
	}

	offset = ((u64)FUNC0(p->header[1]) << 32) |
		p->header[2];

	if (!FUNC7(offset, request->length))
		FUNC5(card, p, request, offset);
	else
		FUNC6(card, p, request, offset);

}