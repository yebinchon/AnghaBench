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
struct spi_transfer {int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct ad5504_state {int /*<<< orphan*/ * data; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AD5504_CMD_READ ; 
 int AD5504_RES_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct spi_transfer*,int) ; 

__attribute__((used)) static int FUNC4(struct ad5504_state *st, u8 addr)
{
	int ret;
	struct spi_transfer t = {
	    .tx_buf = &st->data[0],
	    .rx_buf = &st->data[1],
	    .len = 2,
	};

	st->data[0] = FUNC2(AD5504_CMD_READ | FUNC0(addr));
	ret = FUNC3(st->spi, &t, 1);
	if (ret < 0)
		return ret;

	return FUNC1(st->data[1]) & AD5504_RES_MASK;
}