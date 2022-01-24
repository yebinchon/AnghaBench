#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct psmouse {unsigned char* packet; struct alps_data* private; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ y; scalar_t__ x; } ;
struct alps_fields {int fingers; int /*<<< orphan*/  ts_middle; int /*<<< orphan*/  ts_right; int /*<<< orphan*/  ts_left; int /*<<< orphan*/  pressure; TYPE_1__ st; scalar_t__ first_mp; scalar_t__ is_mp; } ;
struct alps_data {int multi_packet; unsigned char* multi_data; int flags; int quirks; int /*<<< orphan*/  (* decode_fields ) (struct alps_fields*,unsigned char*,struct psmouse*) ;struct alps_fields f; struct input_dev* dev2; } ;

/* Variables and functions */
 int ALPS_DUALPOINT ; 
 int ALPS_QUIRK_TRACKSTICK_BUTTONS ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 scalar_t__ FUNC0 (struct alps_data*,struct alps_fields*) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct alps_fields*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct alps_fields*,unsigned char*,struct psmouse*) ; 
 int /*<<< orphan*/  FUNC7 (struct alps_fields*,unsigned char*,struct psmouse*) ; 

__attribute__((used)) static void FUNC8(struct psmouse *psmouse)
{
	struct alps_data *priv = psmouse->private;
	unsigned char *packet = psmouse->packet;
	struct input_dev *dev2 = priv->dev2;
	struct alps_fields *f = &priv->f;
	int fingers = 0;

	FUNC5(f, 0, sizeof(*f));

	priv->decode_fields(f, packet, psmouse);

	/*
	 * There's no single feature of touchpad position and bitmap packets
	 * that can be used to distinguish between them. We rely on the fact
	 * that a bitmap packet should always follow a position packet with
	 * bit 6 of packet[4] set.
	 */
	if (priv->multi_packet) {
		/*
		 * Sometimes a position packet will indicate a multi-packet
		 * sequence, but then what follows is another position
		 * packet. Check for this, and when it happens process the
		 * position packet as usual.
		 */
		if (f->is_mp) {
			fingers = f->fingers;
			/*
			 * Bitmap processing uses position packet's coordinate
			 * data, so we need to do decode it first.
			 */
			priv->decode_fields(f, priv->multi_data, psmouse);
			if (FUNC0(priv, f) == 0)
				fingers = 0; /* Use st data */
		} else {
			priv->multi_packet = 0;
		}
	}

	/*
	 * Bit 6 of byte 0 is not usually set in position packets. The only
	 * times it seems to be set is in situations where the data is
	 * suspect anyway, e.g. a palm resting flat on the touchpad. Given
	 * this combined with the fact that this bit is useful for filtering
	 * out misidentified bitmap packets, we reject anything with this
	 * bit set.
	 */
	if (f->is_mp)
		return;

	if (!priv->multi_packet && f->first_mp) {
		priv->multi_packet = 1;
		FUNC4(priv->multi_data, packet, sizeof(priv->multi_data));
		return;
	}

	priv->multi_packet = 0;

	/*
	 * Sometimes the hardware sends a single packet with z = 0
	 * in the middle of a stream. Real releases generate packets
	 * with x, y, and z all zero, so these seem to be flukes.
	 * Ignore them.
	 */
	if (f->st.x && f->st.y && !f->pressure)
		return;

	FUNC1(psmouse, fingers);

	if ((priv->flags & ALPS_DUALPOINT) &&
	    !(priv->quirks & ALPS_QUIRK_TRACKSTICK_BUTTONS)) {
		FUNC2(dev2, BTN_LEFT, f->ts_left);
		FUNC2(dev2, BTN_RIGHT, f->ts_right);
		FUNC2(dev2, BTN_MIDDLE, f->ts_middle);
		FUNC3(dev2);
	}
}