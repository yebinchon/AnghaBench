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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct gma_encoder {int dummy; } ;

/* Variables and functions */
 int DP_AUX_NATIVE_REPLY_ACK ; 
 int DP_AUX_NATIVE_REPLY_DEFER ; 
 int DP_AUX_NATIVE_REPLY_MASK ; 
 int DP_AUX_NATIVE_WRITE ; 
 int EIO ; 
 int FUNC0 (struct gma_encoder*,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct gma_encoder *encoder,
			  uint16_t address, uint8_t *send, int send_bytes)
{
	int ret;
	uint8_t	msg[20];
	int msg_bytes;
	uint8_t	ack;

	if (send_bytes > 16)
		return -1;
	msg[0] = DP_AUX_NATIVE_WRITE << 4;
	msg[1] = address >> 8;
	msg[2] = address & 0xff;
	msg[3] = send_bytes - 1;
	FUNC1(&msg[4], send, send_bytes);
	msg_bytes = send_bytes + 4;
	for (;;) {
		ret = FUNC0(encoder, msg, msg_bytes, &ack, 1);
		if (ret < 0)
			return ret;
		ack >>= 4;
		if ((ack & DP_AUX_NATIVE_REPLY_MASK) == DP_AUX_NATIVE_REPLY_ACK)
			break;
		else if ((ack & DP_AUX_NATIVE_REPLY_MASK) == DP_AUX_NATIVE_REPLY_DEFER)
			FUNC2(100);
		else
			return -EIO;
	}
	return send_bytes;
}