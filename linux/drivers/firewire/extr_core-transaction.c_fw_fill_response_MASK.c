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
struct fw_packet {int* header; int header_length; size_t payload_length; int payload_mapped; void* payload; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  RETRY_1 ; 
#define  TCODE_LOCK_REQUEST 132 
#define  TCODE_READ_BLOCK_REQUEST 131 
#define  TCODE_READ_QUADLET_REQUEST 130 
 int TCODE_READ_QUADLET_RESPONSE ; 
#define  TCODE_WRITE_BLOCK_REQUEST 129 
#define  TCODE_WRITE_QUADLET_REQUEST 128 
 int TCODE_WRITE_RESPONSE ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int) ; 

void FUNC14(struct fw_packet *response, u32 *request_header,
		      int rcode, void *payload, size_t length)
{
	int tcode, tlabel, extended_tcode, source, destination;

	tcode          = FUNC6(request_header[0]);
	tlabel         = FUNC7(request_header[0]);
	source         = FUNC3(request_header[0]);
	destination    = FUNC5(request_header[1]);
	extended_tcode = FUNC4(request_header[3]);

	response->header[0] =
		FUNC9(RETRY_1) |
		FUNC12(tlabel) |
		FUNC1(destination);
	response->header[1] =
		FUNC10(source) |
		FUNC8(rcode);
	response->header[2] = 0;

	switch (tcode) {
	case TCODE_WRITE_QUADLET_REQUEST:
	case TCODE_WRITE_BLOCK_REQUEST:
		response->header[0] |= FUNC11(TCODE_WRITE_RESPONSE);
		response->header_length = 12;
		response->payload_length = 0;
		break;

	case TCODE_READ_QUADLET_REQUEST:
		response->header[0] |=
			FUNC11(TCODE_READ_QUADLET_RESPONSE);
		if (payload != NULL)
			response->header[3] = *(u32 *)payload;
		else
			response->header[3] = 0;
		response->header_length = 16;
		response->payload_length = 0;
		break;

	case TCODE_READ_BLOCK_REQUEST:
	case TCODE_LOCK_REQUEST:
		response->header[0] |= FUNC11(tcode + 2);
		response->header[3] =
			FUNC0(length) |
			FUNC2(extended_tcode);
		response->header_length = 16;
		response->payload = payload;
		response->payload_length = length;
		break;

	default:
		FUNC13(1, "wrong tcode %d\n", tcode);
	}

	response->payload_mapped = false;
}