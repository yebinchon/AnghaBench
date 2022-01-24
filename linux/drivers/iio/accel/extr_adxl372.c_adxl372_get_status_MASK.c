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
typedef  int u32 ;
typedef  int u16 ;
struct adxl372_state {int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ADXL372_STATUS_1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct adxl372_state *st,
			      u8 *status1, u8 *status2,
			      u16 *fifo_entries)
{
	__be32 buf;
	u32 val;
	int ret;

	/* STATUS1, STATUS2, FIFO_ENTRIES2 and FIFO_ENTRIES are adjacent regs */
	ret = FUNC1(st->regmap, ADXL372_STATUS_1,
			       &buf, sizeof(buf));
	if (ret < 0)
		return ret;

	val = FUNC0(buf);

	*status1 = (val >> 24) & 0x0F;
	*status2 = (val >> 16) & 0x0F;
	/*
	 * FIFO_ENTRIES contains the least significant byte, and FIFO_ENTRIES2
	 * contains the two most significant bits
	 */
	*fifo_entries = val & 0x3FF;

	return ret;
}