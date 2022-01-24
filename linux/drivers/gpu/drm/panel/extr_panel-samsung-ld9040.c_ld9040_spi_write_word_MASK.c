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
typedef  int /*<<< orphan*/  u16 ;
struct spi_transfer {int len; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
struct ld9040 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_message*) ; 
 int FUNC2 (struct spi_device*,struct spi_message*) ; 
 struct spi_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ld9040 *ctx, u16 data)
{
	struct spi_device *spi = FUNC3(ctx->dev);
	struct spi_transfer xfer = {
		.len		= 2,
		.tx_buf		= &data,
	};
	struct spi_message msg;

	FUNC1(&msg);
	FUNC0(&xfer, &msg);

	return FUNC2(spi, &msg);
}