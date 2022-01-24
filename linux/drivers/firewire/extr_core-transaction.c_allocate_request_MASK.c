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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  callback; scalar_t__ ack; int /*<<< orphan*/  generation; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  speed; } ;
struct fw_request {int length; int /*<<< orphan*/  request_header; int /*<<< orphan*/  data; int /*<<< orphan*/  ack; TYPE_1__ response; } ;
struct fw_packet {int* header; int* payload; int /*<<< orphan*/  ack; int /*<<< orphan*/  generation; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  speed; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
#define  TCODE_LOCK_REQUEST 132 
#define  TCODE_READ_BLOCK_REQUEST 131 
#define  TCODE_READ_QUADLET_REQUEST 130 
#define  TCODE_WRITE_BLOCK_REQUEST 129 
#define  TCODE_WRITE_QUADLET_REQUEST 128 
 int /*<<< orphan*/  FUNC2 (struct fw_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_response_callback ; 
 int /*<<< orphan*/  FUNC3 (struct fw_card*,char*,int,int,int) ; 
 struct fw_request* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static struct fw_request *FUNC6(struct fw_card *card,
					   struct fw_packet *p)
{
	struct fw_request *request;
	u32 *data, length;
	int request_tcode;

	request_tcode = FUNC1(p->header[0]);
	switch (request_tcode) {
	case TCODE_WRITE_QUADLET_REQUEST:
		data = &p->header[3];
		length = 4;
		break;

	case TCODE_WRITE_BLOCK_REQUEST:
	case TCODE_LOCK_REQUEST:
		data = p->payload;
		length = FUNC0(p->header[3]);
		break;

	case TCODE_READ_QUADLET_REQUEST:
		data = NULL;
		length = 4;
		break;

	case TCODE_READ_BLOCK_REQUEST:
		data = NULL;
		length = FUNC0(p->header[3]);
		break;

	default:
		FUNC3(card, "ERROR - corrupt request received - %08x %08x %08x\n",
			 p->header[0], p->header[1], p->header[2]);
		return NULL;
	}

	request = FUNC4(sizeof(*request) + length, GFP_ATOMIC);
	if (request == NULL)
		return NULL;

	request->response.speed = p->speed;
	request->response.timestamp =
			FUNC2(card, p->timestamp);
	request->response.generation = p->generation;
	request->response.ack = 0;
	request->response.callback = free_response_callback;
	request->ack = p->ack;
	request->length = length;
	if (data)
		FUNC5(request->data, data, length);

	FUNC5(request->request_header, p->header, sizeof(p->header));

	return request;
}