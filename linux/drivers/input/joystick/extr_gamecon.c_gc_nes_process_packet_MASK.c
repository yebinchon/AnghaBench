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
struct gc_pad {int type; struct input_dev* dev; } ;
struct gc {struct gc_pad* pads; scalar_t__* pad_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int GC_MAX_DEVICES ; 
#define  GC_NES 130 
 int GC_NES_LENGTH ; 
#define  GC_SNES 129 
#define  GC_SNESMOUSE 128 
 int GC_SNESMOUSE_LENGTH ; 
 int GC_SNES_LENGTH ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 size_t* gc_nes_bytes ; 
 int /*<<< orphan*/  FUNC0 (struct gc*,int,unsigned char*) ; 
 int /*<<< orphan*/ * gc_snes_btn ; 
 size_t* gc_snes_bytes ; 
 int* gc_status_bit ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 

__attribute__((used)) static void FUNC5(struct gc *gc)
{
	unsigned char data[GC_SNESMOUSE_LENGTH];
	struct gc_pad *pad;
	struct input_dev *dev;
	int i, j, s, len;
	char x_rel, y_rel;

	len = gc->pad_count[GC_SNESMOUSE] ? GC_SNESMOUSE_LENGTH :
			(gc->pad_count[GC_SNES] ? GC_SNES_LENGTH : GC_NES_LENGTH);

	FUNC0(gc, len, data);

	for (i = 0; i < GC_MAX_DEVICES; i++) {

		pad = &gc->pads[i];
		dev = pad->dev;
		s = gc_status_bit[i];

		switch (pad->type) {

		case GC_NES:

			FUNC1(dev, ABS_X, !(s & data[6]) - !(s & data[7]));
			FUNC1(dev, ABS_Y, !(s & data[4]) - !(s & data[5]));

			for (j = 0; j < 4; j++)
				FUNC2(dev, gc_snes_btn[j],
						 s & data[gc_nes_bytes[j]]);
			FUNC4(dev);
			break;

		case GC_SNES:

			FUNC1(dev, ABS_X, !(s & data[6]) - !(s & data[7]));
			FUNC1(dev, ABS_Y, !(s & data[4]) - !(s & data[5]));

			for (j = 0; j < 8; j++)
				FUNC2(dev, gc_snes_btn[j],
						 s & data[gc_snes_bytes[j]]);
			FUNC4(dev);
			break;

		case GC_SNESMOUSE:
			/*
			 * The 4 unused bits from SNES controllers appear
			 * to be ID bits so use them to make sure we are
			 * dealing with a mouse.
			 * gamepad is connected. This is important since
			 * my SNES gamepad sends 1's for bits 16-31, which
			 * cause the mouse pointer to quickly move to the
			 * upper left corner of the screen.
			 */
			if (!(s & data[12]) && !(s & data[13]) &&
			    !(s & data[14]) && (s & data[15])) {
				FUNC2(dev, BTN_LEFT, s & data[9]);
				FUNC2(dev, BTN_RIGHT, s & data[8]);

				x_rel = y_rel = 0;
				for (j = 0; j < 7; j++) {
					x_rel <<= 1;
					if (data[25 + j] & s)
						x_rel |= 1;

					y_rel <<= 1;
					if (data[17 + j] & s)
						y_rel |= 1;
				}

				if (x_rel) {
					if (data[24] & s)
						x_rel = -x_rel;
					FUNC3(dev, REL_X, x_rel);
				}

				if (y_rel) {
					if (data[16] & s)
						y_rel = -y_rel;
					FUNC3(dev, REL_Y, y_rel);
				}

				FUNC4(dev);
			}
			break;

		default:
			break;
		}
	}
}