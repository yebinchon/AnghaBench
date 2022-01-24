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
struct adc108s102_state {int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/  scan_single_msg; int /*<<< orphan*/  spi; int /*<<< orphan*/ * tx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct adc108s102_state *st, unsigned int ch)
{
	int ret;

	st->tx_buf[0] = FUNC2(FUNC0(ch));
	ret = FUNC3(st->spi, &st->scan_single_msg);
	if (ret)
		return ret;

	/* Skip the dummy response in the first slot */
	return FUNC1(st->rx_buf[1]);
}