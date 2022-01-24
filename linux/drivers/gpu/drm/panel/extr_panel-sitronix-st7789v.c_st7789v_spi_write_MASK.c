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
typedef  int u8 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  txbuf ;
struct st7789v {int /*<<< orphan*/  spi; } ;
struct spi_transfer {int* tx_buf; int bits_per_word; int len; } ;
struct spi_message {int dummy; } ;
typedef  enum st7789v_prefix { ____Placeholder_st7789v_prefix } st7789v_prefix ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_message*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static int FUNC3(struct st7789v *ctx, enum st7789v_prefix prefix,
			     u8 data)
{
	struct spi_transfer xfer = { };
	struct spi_message msg;
	u16 txbuf = ((prefix & 1) << 8) | data;

	FUNC1(&msg);

	xfer.tx_buf = &txbuf;
	xfer.bits_per_word = 9;
	xfer.len = sizeof(txbuf);

	FUNC0(&xfer, &msg);
	return FUNC2(ctx->spi, &msg);
}