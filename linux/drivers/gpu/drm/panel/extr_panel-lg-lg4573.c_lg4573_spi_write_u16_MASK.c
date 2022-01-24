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
typedef  int /*<<< orphan*/  u16 ;
struct spi_transfer {int len; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct lg4573 {int /*<<< orphan*/  spi; TYPE_1__ panel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_message*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static int FUNC5(struct lg4573 *ctx, u16 data)
{
	struct spi_transfer xfer = {
		.len = 2,
	};
	u16 temp = FUNC0(data);
	struct spi_message msg;

	FUNC1(ctx->panel.dev, "writing data: %x\n", data);
	xfer.tx_buf = &temp;
	FUNC3(&msg);
	FUNC2(&xfer, &msg);

	return FUNC4(ctx->spi, &msg);
}