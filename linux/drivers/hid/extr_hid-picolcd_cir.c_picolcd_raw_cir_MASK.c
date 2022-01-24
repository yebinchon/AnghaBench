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
struct picolcd_data {int status; int /*<<< orphan*/  rc_dev; int /*<<< orphan*/  lock; } ;
struct ir_raw_event {int pulse; int duration; } ;
struct hid_report {int dummy; } ;

/* Variables and functions */
 int PICOLCD_CIR_SHUN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ir_raw_event*) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct picolcd_data *data,
		struct hid_report *report, u8 *raw_data, int size)
{
	unsigned long flags;
	int i, w, sz;
	struct ir_raw_event rawir = {};

	/* ignore if rc_dev is NULL or status is shunned */
	FUNC4(&data->lock, flags);
	if (!data->rc_dev || (data->status & PICOLCD_CIR_SHUN)) {
		FUNC5(&data->lock, flags);
		return 1;
	}
	FUNC5(&data->lock, flags);

	/* PicoLCD USB packets contain 16-bit intervals in network order,
	 * with value negated for pulse. Intervals are in microseconds.
	 *
	 * Note: some userspace LIRC code for PicoLCD says negated values
	 * for space - is it a matter of IR chip? (pulse for my TSOP2236)
	 *
	 * In addition, the first interval seems to be around 15000 + base
	 * interval for non-first report of IR data - thus the quirk below
	 * to get RC_CODE to understand Sony and JVC remotes I have at hand
	 */
	sz = size > 0 ? FUNC3((int)raw_data[0], size-1) : 0;
	for (i = 0; i+1 < sz; i += 2) {
		w = (raw_data[i] << 8) | (raw_data[i+1]);
		rawir.pulse = !!(w & 0x8000);
		rawir.duration = FUNC0(rawir.pulse ? (65536 - w) : w);
		/* Quirk!! - see above */
		if (i == 0 && rawir.duration > 15000000)
			rawir.duration -= 15000000;
		FUNC2(data->rc_dev, &rawir);
	}
	FUNC1(data->rc_dev);

	return 1;
}