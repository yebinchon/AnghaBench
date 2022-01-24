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
typedef  int /*<<< orphan*/  u8 ;
struct touchpad_protocol {unsigned int number_of_fingers; } ;
struct spi_packet {scalar_t__ flags; scalar_t__ device; int /*<<< orphan*/  data; int /*<<< orphan*/  length; int /*<<< orphan*/  remaining; int /*<<< orphan*/  offset; } ;
struct message {int /*<<< orphan*/  length; struct touchpad_protocol touchpad; int /*<<< orphan*/  keyboard; } ;
struct applespi_data {int read_active; int write_active; unsigned int saved_msg_len; TYPE_1__* spi; scalar_t__ msg_buf; int /*<<< orphan*/ * rx_buffer; int /*<<< orphan*/  cmd_msg_lock; int /*<<< orphan*/  drain_complete; scalar_t__ drain; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int APPLESPI_PACKET_SIZE ; 
 unsigned int MAX_FINGERS ; 
 unsigned int MAX_PKTS_PER_MSG ; 
 unsigned int MSG_HEADER_SIZE ; 
 scalar_t__ PACKET_DEV_KEYB ; 
 scalar_t__ PACKET_DEV_TPAD ; 
 scalar_t__ PACKET_TYPE_READ ; 
 scalar_t__ PACKET_TYPE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct applespi_data*,struct spi_packet*) ; 
 int /*<<< orphan*/  FUNC1 (struct applespi_data*,struct spi_packet*,struct message*) ; 
 int /*<<< orphan*/  FUNC2 (struct applespi_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct applespi_data*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct applespi_data*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  fingers ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct applespi_data*,struct touchpad_protocol*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 size_t FUNC11 (struct touchpad_protocol*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct applespi_data *applespi)
{
	struct spi_packet *packet;
	struct message *message;
	unsigned int msg_len;
	unsigned int off;
	unsigned int rem;
	unsigned int len;

	/* process packet header */
	if (!FUNC4(applespi, applespi->rx_buffer,
				 APPLESPI_PACKET_SIZE)) {
		unsigned long flags;

		FUNC9(&applespi->cmd_msg_lock, flags);

		if (applespi->drain) {
			applespi->read_active = false;
			applespi->write_active = false;

			FUNC12(&applespi->drain_complete);
		}

		FUNC10(&applespi->cmd_msg_lock, flags);

		return;
	}

	packet = (struct spi_packet *)applespi->rx_buffer;

	FUNC0(applespi, packet);

	off = FUNC6(packet->offset);
	rem = FUNC6(packet->remaining);
	len = FUNC6(packet->length);

	if (len > sizeof(packet->data)) {
		FUNC5(&applespi->spi->dev,
				     "Received corrupted packet (invalid packet length %u)\n",
				     len);
		goto msg_complete;
	}

	/* handle multi-packet messages */
	if (rem > 0 || off > 0) {
		if (off != applespi->saved_msg_len) {
			FUNC5(&applespi->spi->dev,
					     "Received unexpected offset (got %u, expected %u)\n",
					     off, applespi->saved_msg_len);
			goto msg_complete;
		}

		if (off + rem > MAX_PKTS_PER_MSG * APPLESPI_PACKET_SIZE) {
			FUNC5(&applespi->spi->dev,
					     "Received message too large (size %u)\n",
					     off + rem);
			goto msg_complete;
		}

		if (off + len > MAX_PKTS_PER_MSG * APPLESPI_PACKET_SIZE) {
			FUNC5(&applespi->spi->dev,
					     "Received message too large (size %u)\n",
					     off + len);
			goto msg_complete;
		}

		FUNC7(applespi->msg_buf + off, &packet->data, len);
		applespi->saved_msg_len += len;

		if (rem > 0)
			return;

		message = (struct message *)applespi->msg_buf;
		msg_len = applespi->saved_msg_len;
	} else {
		message = (struct message *)&packet->data;
		msg_len = len;
	}

	/* got complete message - verify */
	if (!FUNC4(applespi, (u8 *)message, msg_len))
		goto msg_complete;

	if (FUNC6(message->length) != msg_len - MSG_HEADER_SIZE - 2) {
		FUNC5(&applespi->spi->dev,
				     "Received corrupted packet (invalid message length %u - expected %u)\n",
				     FUNC6(message->length),
				     msg_len - MSG_HEADER_SIZE - 2);
		goto msg_complete;
	}

	/* handle message */
	if (packet->flags == PACKET_TYPE_READ &&
	    packet->device == PACKET_DEV_KEYB) {
		FUNC2(applespi, &message->keyboard);

	} else if (packet->flags == PACKET_TYPE_READ &&
		   packet->device == PACKET_DEV_TPAD) {
		struct touchpad_protocol *tp;
		size_t tp_len;

		tp = &message->touchpad;
		tp_len = FUNC11(tp, fingers, tp->number_of_fingers);

		if (FUNC6(message->length) + 2 != tp_len) {
			FUNC5(&applespi->spi->dev,
					     "Received corrupted packet (invalid message length %u - num-fingers %u, tp-len %zu)\n",
					     FUNC6(message->length),
					     tp->number_of_fingers, tp_len);
			goto msg_complete;
		}

		if (tp->number_of_fingers > MAX_FINGERS) {
			FUNC5(&applespi->spi->dev,
					     "Number of reported fingers (%u) exceeds max (%u))\n",
					     tp->number_of_fingers,
					     MAX_FINGERS);
			tp->number_of_fingers = MAX_FINGERS;
		}

		FUNC8(applespi, tp);

	} else if (packet->flags == PACKET_TYPE_WRITE) {
		FUNC1(applespi, packet, message);
	}

msg_complete:
	applespi->saved_msg_len = 0;

	FUNC3(applespi, packet->flags == PACKET_TYPE_WRITE,
			      true);
}