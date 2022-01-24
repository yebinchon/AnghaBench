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
struct fw_request {scalar_t__ ack; int /*<<< orphan*/  response; int /*<<< orphan*/ * request_header; int /*<<< orphan*/ * data; } ;
struct fw_card {TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* send_response ) (struct fw_card*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ ACK_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RCODE_COMPLETE ; 
 scalar_t__ FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_card*,int /*<<< orphan*/ *) ; 

void FUNC6(struct fw_card *card,
		      struct fw_request *request, int rcode)
{
	if (FUNC1(!request, "invalid for FCP address handlers"))
		return;

	/* unified transaction or broadcast transaction: don't respond */
	if (request->ack != ACK_PENDING ||
	    FUNC0(request->request_header[0])) {
		FUNC4(request);
		return;
	}

	if (rcode == RCODE_COMPLETE)
		FUNC2(&request->response, request->request_header,
				 rcode, request->data,
				 FUNC3(request));
	else
		FUNC2(&request->response, request->request_header,
				 rcode, NULL, 0);

	card->driver->send_response(card, &request->response);
}