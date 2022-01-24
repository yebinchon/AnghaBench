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
struct spi_packet {scalar_t__ device; } ;
struct message {int /*<<< orphan*/  rsp_buf_len; int /*<<< orphan*/  type; int /*<<< orphan*/  length; int /*<<< orphan*/  tp_info; } ;
struct applespi_data {TYPE_1__* spi; int /*<<< orphan*/  work; int /*<<< orphan*/  rcvd_tp_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ PACKET_DEV_INFO ; 
 scalar_t__ PACKET_DEV_TPAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct applespi_data *applespi,
					 struct spi_packet *packet,
					 struct message *message)
{
	if (packet->device == PACKET_DEV_INFO &&
	    FUNC2(message->type) == 0x1020) {
		/*
		 * We're not allowed to sleep here, but registering an input
		 * device can sleep.
		 */
		applespi->rcvd_tp_info = message->tp_info;
		FUNC3(&applespi->work);
		return;
	}

	if (FUNC2(message->length) != 0x0000) {
		FUNC1(&applespi->spi->dev,
				     "Received unexpected write response: length=%x\n",
				     FUNC2(message->length));
		return;
	}

	if (packet->device == PACKET_DEV_TPAD &&
	    FUNC2(message->type) == 0x0252 &&
	    FUNC2(message->rsp_buf_len) == 0x0002)
		FUNC0(&applespi->spi->dev, "modeswitch done.\n");
}