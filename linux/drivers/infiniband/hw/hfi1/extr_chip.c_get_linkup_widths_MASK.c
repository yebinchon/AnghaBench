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
typedef  int u16 ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,int*,int*) ; 
 int FUNC1 (struct hfi1_devdata*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void FUNC3(struct hfi1_devdata *dd, u16 *tx_width,
			      u16 *rx_width)
{
	u16 widths, tx, rx;
	u8 misc_bits, local_flags;
	u16 active_tx, active_rx;

	FUNC2(dd, &misc_bits, &local_flags, &widths);
	tx = widths >> 12;
	rx = (widths >> 8) & 0xf;

	*tx_width = FUNC1(dd, tx);
	*rx_width = FUNC1(dd, rx);

	/* print the active widths */
	FUNC0(dd, &active_tx, &active_rx);
}