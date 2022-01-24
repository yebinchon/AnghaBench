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
struct psmouse {unsigned char* packet; struct input_dev* dev; struct alps_data* private; } ;
struct input_dev {int dummy; } ;
struct alps_fields {int fingers; int /*<<< orphan*/  pressure; int /*<<< orphan*/  middle; int /*<<< orphan*/  right; int /*<<< orphan*/  left; int /*<<< orphan*/  ts_middle; int /*<<< orphan*/  ts_right; int /*<<< orphan*/  ts_left; scalar_t__ first_mp; scalar_t__ is_mp; } ;
struct alps_data {int multi_packet; unsigned char* multi_data; int flags; int /*<<< orphan*/  (* decode_fields ) (struct alps_fields*,unsigned char*,struct psmouse*) ;struct alps_fields f; struct input_dev* dev2; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int ALPS_DUALPOINT ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 scalar_t__ SS4_PACKET_ID_STICK ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct alps_fields*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct psmouse*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct alps_fields*,unsigned char*,struct psmouse*) ; 
 int /*<<< orphan*/  FUNC14 (struct alps_fields*,unsigned char*,struct psmouse*) ; 

__attribute__((used)) static void FUNC15(struct psmouse *psmouse)
{
	struct alps_data *priv = psmouse->private;
	unsigned char *packet = psmouse->packet;
	struct input_dev *dev = psmouse->dev;
	struct input_dev *dev2 = priv->dev2;
	struct alps_fields *f = &priv->f;

	FUNC11(f, 0, sizeof(struct alps_fields));
	priv->decode_fields(f, packet, psmouse);
	if (priv->multi_packet) {
		/*
		 * Sometimes the first packet will indicate a multi-packet
		 * sequence, but sometimes the next multi-packet would not
		 * come. Check for this, and when it happens process the
		 * position packet as usual.
		 */
		if (f->is_mp) {
			/* Now process the 1st packet */
			priv->decode_fields(f, priv->multi_data, psmouse);
		} else {
			priv->multi_packet = 0;
		}
	}

	/*
	 * "f.is_mp" would always be '0' after merging the 1st and 2nd packet.
	 * When it is set, it means 2nd packet comes without 1st packet come.
	 */
	if (f->is_mp)
		return;

	/* Save the first packet */
	if (!priv->multi_packet && f->first_mp) {
		priv->multi_packet = 1;
		FUNC10(priv->multi_data, packet, sizeof(priv->multi_data));
		return;
	}

	priv->multi_packet = 0;

	/* Report trackstick */
	if (FUNC3(packet) == SS4_PACKET_ID_STICK) {
		if (!(priv->flags & ALPS_DUALPOINT)) {
			FUNC12(psmouse,
				     "Rejected trackstick packet from non DualPoint device");
			return;
		}

		FUNC8(dev2, REL_X, FUNC0(packet));
		FUNC8(dev2, REL_Y, FUNC1(packet));
		FUNC6(dev2, ABS_PRESSURE, FUNC2(packet));

		FUNC7(dev2, BTN_LEFT, f->ts_left);
		FUNC7(dev2, BTN_RIGHT, f->ts_right);
		FUNC7(dev2, BTN_MIDDLE, f->ts_middle);

		FUNC9(dev2);
		return;
	}

	/* Report touchpad */
	FUNC4(psmouse, (f->fingers <= 4) ? f->fingers : 4);

	FUNC5(dev, f->fingers);

	FUNC7(dev, BTN_LEFT, f->left);
	FUNC7(dev, BTN_RIGHT, f->right);
	FUNC7(dev, BTN_MIDDLE, f->middle);

	FUNC6(dev, ABS_PRESSURE, f->pressure);
	FUNC9(dev);
}