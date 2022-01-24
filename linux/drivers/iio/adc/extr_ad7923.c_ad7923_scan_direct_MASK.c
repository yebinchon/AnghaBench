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
struct ad7923_state {int settings; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/  scan_single_msg; int /*<<< orphan*/  spi; int /*<<< orphan*/ * tx_buf; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  AD7923_SEQUENCE_OFF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int AD7923_SHIFT_REGISTER ; 
 int AD7923_WRITE_CR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ad7923_state *st, unsigned ch)
{
	int ret, cmd;

	cmd = AD7923_WRITE_CR | FUNC0(ch) |
		FUNC1(AD7923_SEQUENCE_OFF) |
		st->settings;
	cmd <<= AD7923_SHIFT_REGISTER;
	st->tx_buf[0] = FUNC3(cmd);

	ret = FUNC4(st->spi, &st->scan_single_msg);
	if (ret)
		return ret;

	return FUNC2(st->rx_buf[0]);
}