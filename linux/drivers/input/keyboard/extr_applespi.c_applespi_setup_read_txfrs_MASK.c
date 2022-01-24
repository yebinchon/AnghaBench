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
struct spi_transfer {int /*<<< orphan*/  len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  delay_usecs; } ;
struct spi_message {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  spi_cs_delay; } ;
struct applespi_data {int /*<<< orphan*/  rx_buffer; TYPE_1__ spi_settings; struct spi_transfer rd_t; struct spi_transfer dl_t; struct spi_message rd_m; } ;

/* Variables and functions */
 int /*<<< orphan*/  APPLESPI_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_message*) ; 

__attribute__((used)) static void FUNC3(struct applespi_data *applespi)
{
	struct spi_message *msg = &applespi->rd_m;
	struct spi_transfer *dl_t = &applespi->dl_t;
	struct spi_transfer *rd_t = &applespi->rd_t;

	FUNC0(dl_t, 0, sizeof(*dl_t));
	FUNC0(rd_t, 0, sizeof(*rd_t));

	dl_t->delay_usecs = applespi->spi_settings.spi_cs_delay;

	rd_t->rx_buf = applespi->rx_buffer;
	rd_t->len = APPLESPI_PACKET_SIZE;

	FUNC2(msg);
	FUNC1(dl_t, msg);
	FUNC1(rd_t, msg);
}