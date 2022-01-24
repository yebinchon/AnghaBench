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
typedef  unsigned long long u32 ;
struct fw_packet {int* header; int header_length; size_t payload_length; int speed; int generation; int payload_mapped; scalar_t__ ack; void* payload; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (unsigned long long) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  RETRY_X ; 
#define  TCODE_LOCK_REQUEST 132 
#define  TCODE_READ_BLOCK_REQUEST 131 
#define  TCODE_READ_QUADLET_REQUEST 130 
 int TCODE_STREAM_DATA ; 
#define  TCODE_WRITE_BLOCK_REQUEST 129 
#define  TCODE_WRITE_QUADLET_REQUEST 128 
 int /*<<< orphan*/  FUNC8 (int,char*,int) ; 

__attribute__((used)) static void FUNC9(struct fw_packet *packet, int tcode, int tlabel,
		int destination_id, int source_id, int generation, int speed,
		unsigned long long offset, void *payload, size_t length)
{
	int ext_tcode;

	if (tcode == TCODE_STREAM_DATA) {
		packet->header[0] =
			FUNC0(length) |
			destination_id |
			FUNC6(TCODE_STREAM_DATA);
		packet->header_length = 4;
		packet->payload = payload;
		packet->payload_length = length;

		goto common;
	}

	if (tcode > 0x10) {
		ext_tcode = tcode & ~0x10;
		tcode = TCODE_LOCK_REQUEST;
	} else
		ext_tcode = 0;

	packet->header[0] =
		FUNC4(RETRY_X) |
		FUNC7(tlabel) |
		FUNC6(tcode) |
		FUNC1(destination_id);
	packet->header[1] =
		FUNC3(offset >> 32) | FUNC5(source_id);
	packet->header[2] =
		offset;

	switch (tcode) {
	case TCODE_WRITE_QUADLET_REQUEST:
		packet->header[3] = *(u32 *)payload;
		packet->header_length = 16;
		packet->payload_length = 0;
		break;

	case TCODE_LOCK_REQUEST:
	case TCODE_WRITE_BLOCK_REQUEST:
		packet->header[3] =
			FUNC0(length) |
			FUNC2(ext_tcode);
		packet->header_length = 16;
		packet->payload = payload;
		packet->payload_length = length;
		break;

	case TCODE_READ_QUADLET_REQUEST:
		packet->header_length = 12;
		packet->payload_length = 0;
		break;

	case TCODE_READ_BLOCK_REQUEST:
		packet->header[3] =
			FUNC0(length) |
			FUNC2(ext_tcode);
		packet->header_length = 16;
		packet->payload_length = 0;
		break;

	default:
		FUNC8(1, "wrong tcode %d\n", tcode);
	}
 common:
	packet->speed = speed;
	packet->generation = generation;
	packet->ack = 0;
	packet->payload_mapped = false;
}