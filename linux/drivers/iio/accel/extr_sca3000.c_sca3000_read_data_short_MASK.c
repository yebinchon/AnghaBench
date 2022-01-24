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
typedef  int /*<<< orphan*/  u8 ;
struct spi_transfer {int len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct sca3000_state {int /*<<< orphan*/  us; int /*<<< orphan*/ * tx; int /*<<< orphan*/  rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct spi_transfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sca3000_state *st,
				   u8 reg_address_high,
				   int len)
{
	struct spi_transfer xfer[2] = {
		{
			.len = 1,
			.tx_buf = st->tx,
		}, {
			.len = len,
			.rx_buf = st->rx,
		}
	};
	st->tx[0] = FUNC1(reg_address_high);

	return FUNC2(st->us, xfer, FUNC0(xfer));
}