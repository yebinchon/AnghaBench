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
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_A ; 
 int /*<<< orphan*/  BTN_B ; 
 int /*<<< orphan*/  BTN_C ; 
 int /*<<< orphan*/  BTN_START ; 
 int /*<<< orphan*/ * db9_abs ; 
 int /*<<< orphan*/ * db9_cd32_btn ; 
 int /*<<< orphan*/ * db9_saturn_byte ; 
 unsigned char* db9_saturn_mask ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int FUNC2(unsigned char id, unsigned char data[60], struct input_dev *devs[], int n, int max_pads)
{
	struct input_dev *dev;
	int tmp, i, j;

	tmp = (id == 0x41) ? 60 : 10;
	for (j = 0; j < tmp && n < max_pads; j += 10, n++) {
		dev = devs[n];
		switch (data[j]) {
		case 0x16: /* multi controller (analog 4 axis) */
			FUNC0(dev, db9_abs[5], data[j + 6]);
			/* fall through */
		case 0x15: /* mission stick (analog 3 axis) */
			FUNC0(dev, db9_abs[3], data[j + 4]);
			FUNC0(dev, db9_abs[4], data[j + 5]);
			/* fall through */
		case 0x13: /* racing controller (analog 1 axis) */
			FUNC0(dev, db9_abs[2], data[j + 3]);
			/* fall through */
		case 0x34: /* saturn keyboard (udlr ZXC ASD QE Esc) */
		case 0x02: /* digital pad (digital 2 axis + buttons) */
			FUNC0(dev, db9_abs[0], !(data[j + 1] & 128) - !(data[j + 1] & 64));
			FUNC0(dev, db9_abs[1], !(data[j + 1] & 32) - !(data[j + 1] & 16));
			for (i = 0; i < 9; i++)
				FUNC1(dev, db9_cd32_btn[i], ~data[j + db9_saturn_byte[i]] & db9_saturn_mask[i]);
			break;
		case 0x19: /* mission stick x2 (analog 6 axis + buttons) */
			FUNC0(dev, db9_abs[0], !(data[j + 1] & 128) - !(data[j + 1] & 64));
			FUNC0(dev, db9_abs[1], !(data[j + 1] & 32) - !(data[j + 1] & 16));
			for (i = 0; i < 9; i++)
				FUNC1(dev, db9_cd32_btn[i], ~data[j + db9_saturn_byte[i]] & db9_saturn_mask[i]);
			FUNC0(dev, db9_abs[2], data[j + 3]);
			FUNC0(dev, db9_abs[3], data[j + 4]);
			FUNC0(dev, db9_abs[4], data[j + 5]);
			/*
			input_report_abs(dev, db9_abs[8], (data[j + 6] & 128 ? 0 : 1) - (data[j + 6] & 64 ? 0 : 1));
			input_report_abs(dev, db9_abs[9], (data[j + 6] & 32 ? 0 : 1) - (data[j + 6] & 16 ? 0 : 1));
			*/
			FUNC0(dev, db9_abs[6], data[j + 7]);
			FUNC0(dev, db9_abs[7], data[j + 8]);
			FUNC0(dev, db9_abs[5], data[j + 9]);
			break;
		case 0xd3: /* sankyo ff (analog 1 axis + stop btn) */
			FUNC1(dev, BTN_A, data[j + 3] & 0x80);
			FUNC0(dev, db9_abs[2], data[j + 3] & 0x7f);
			break;
		case 0xe3: /* shuttle mouse (analog 2 axis + buttons. signed value) */
			FUNC1(dev, BTN_START, data[j + 1] & 0x08);
			FUNC1(dev, BTN_A, data[j + 1] & 0x04);
			FUNC1(dev, BTN_C, data[j + 1] & 0x02);
			FUNC1(dev, BTN_B, data[j + 1] & 0x01);
			FUNC0(dev, db9_abs[2], data[j + 2] ^ 0x80);
			FUNC0(dev, db9_abs[3], (0xff-(data[j + 3] ^ 0x80))+1); /* */
			break;
		case 0xff:
		default: /* no pad */
			FUNC0(dev, db9_abs[0], 0);
			FUNC0(dev, db9_abs[1], 0);
			for (i = 0; i < 9; i++)
				FUNC1(dev, db9_cd32_btn[i], 0);
			break;
		}
	}
	return n;
}