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
struct fw_request {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct fw_packet {int /*<<< orphan*/  generation; int /*<<< orphan*/ * header; } ;
struct fw_card {int dummy; } ;
struct fw_address_handler {int /*<<< orphan*/  callback_data; int /*<<< orphan*/  (* address_callback ) (struct fw_card*,struct fw_request*,int,int,int,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCODE_ADDRESS_ERROR ; 
 int TCODE_LOCK_REQUEST ; 
 int /*<<< orphan*/  address_handler_list ; 
 int /*<<< orphan*/  FUNC4 (struct fw_card*,struct fw_request*,int /*<<< orphan*/ ) ; 
 struct fw_address_handler* FUNC5 (int /*<<< orphan*/ *,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct fw_card*,struct fw_request*,int,int,int,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct fw_card *card,
					    struct fw_packet *p,
					    struct fw_request *request,
					    unsigned long long offset)
{
	struct fw_address_handler *handler;
	int tcode, destination, source;

	destination = FUNC0(p->header[0]);
	source      = FUNC2(p->header[1]);
	tcode       = FUNC3(p->header[0]);
	if (tcode == TCODE_LOCK_REQUEST)
		tcode = 0x10 + FUNC1(p->header[3]);

	FUNC6();
	handler = FUNC5(&address_handler_list,
						   offset, request->length);
	if (handler)
		handler->address_callback(card, request,
					  tcode, destination, source,
					  p->generation, offset,
					  request->data, request->length,
					  handler->callback_data);
	FUNC7();

	if (!handler)
		FUNC4(card, request, RCODE_ADDRESS_ERROR);
}