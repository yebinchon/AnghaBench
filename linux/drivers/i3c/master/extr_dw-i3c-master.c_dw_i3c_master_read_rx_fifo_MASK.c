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
typedef  int /*<<< orphan*/  u32 ;
struct dw_i3c_master {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ RX_TX_DATA_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct dw_i3c_master *master,
				       u8 *bytes, int nbytes)
{
	FUNC1(master->regs + RX_TX_DATA_PORT, bytes, nbytes / 4);
	if (nbytes & 3) {
		u32 tmp;

		FUNC1(master->regs + RX_TX_DATA_PORT, &tmp, 1);
		FUNC0(bytes + (nbytes & ~3), &tmp, nbytes & 3);
	}
}