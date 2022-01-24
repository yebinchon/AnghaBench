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
struct psmouse {unsigned char* packet; int pktcnt; struct fsp_data* private; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
struct fsp_data {int last_mt_fgr; int flags; } ;
typedef  int /*<<< orphan*/  psmouse_ret_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 unsigned char FUNC0 (int) ; 
 int /*<<< orphan*/  BTN_BACK ; 
 int /*<<< orphan*/  BTN_FORWARD ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_TOOL_DOUBLETAP ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int FSPDRV_FLAG_EN_OPC ; 
 unsigned char FSP_PB0_LBTN ; 
 unsigned char FSP_PB0_MFMC ; 
 unsigned char FSP_PB0_MFMC_FGR2 ; 
 unsigned char FSP_PB0_PHY_BTN ; 
#define  FSP_PKT_TYPE_ABS 130 
#define  FSP_PKT_TYPE_NORMAL 129 
#define  FSP_PKT_TYPE_NORMAL_OPC 128 
 char FSP_PKT_TYPE_SHIFT ; 
 unsigned short FUNC1 (unsigned char*) ; 
 unsigned short FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  PSMOUSE_FULL_PACKET ; 
 int /*<<< orphan*/  PSMOUSE_GOOD_DATA ; 
 int /*<<< orphan*/  REL_HWHEEL ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int,int,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*,unsigned char*) ; 

__attribute__((used)) static psmouse_ret_t FUNC10(struct psmouse *psmouse)
{
	struct input_dev *dev = psmouse->dev;
	struct fsp_data *ad = psmouse->private;
	unsigned char *packet = psmouse->packet;
	unsigned char button_status = 0, lscroll = 0, rscroll = 0;
	unsigned short abs_x, abs_y, fgrs = 0;

	if (psmouse->pktcnt < 4)
		return PSMOUSE_GOOD_DATA;

	/*
	 * Full packet accumulated, process it
	 */

	FUNC3(psmouse, packet);

	switch (psmouse->packet[0] >> FSP_PKT_TYPE_SHIFT) {
	case FSP_PKT_TYPE_ABS:

		if ((packet[0] == 0x48 || packet[0] == 0x49) &&
		    packet[1] == 0 && packet[2] == 0) {
			/*
			 * Ignore coordinate noise when finger leaving the
			 * surface, otherwise cursor may jump to upper-left
			 * corner.
			 */
			packet[3] &= 0xf0;
		}

		abs_x = FUNC1(packet);
		abs_y = FUNC2(packet);

		if (packet[0] & FSP_PB0_MFMC) {
			/*
			 * MFMC packet: assume that there are two fingers on
			 * pad
			 */
			fgrs = 2;

			/* MFMC packet */
			if (packet[0] & FSP_PB0_MFMC_FGR2) {
				/* 2nd finger */
				if (ad->last_mt_fgr == 2) {
					/*
					 * workaround for buggy firmware
					 * which doesn't clear MFMC bit if
					 * the 1st finger is up
					 */
					fgrs = 1;
					FUNC4(dev, 0, false, 0, 0);
				}
				ad->last_mt_fgr = 2;

				FUNC4(dev, 1, fgrs == 2, abs_x, abs_y);
			} else {
				/* 1st finger */
				if (ad->last_mt_fgr == 1) {
					/*
					 * workaround for buggy firmware
					 * which doesn't clear MFMC bit if
					 * the 2nd finger is up
					 */
					fgrs = 1;
					FUNC4(dev, 1, false, 0, 0);
				}
				ad->last_mt_fgr = 1;
				FUNC4(dev, 0, fgrs != 0, abs_x, abs_y);
			}
		} else {
			/* SFAC packet */
			if ((packet[0] & (FSP_PB0_LBTN|FSP_PB0_PHY_BTN)) ==
				FSP_PB0_LBTN) {
				/* On-pad click in SFAC mode should be handled
				 * by userspace.  On-pad clicks in MFMC mode
				 * are real clickpad clicks, and not ignored.
				 */
				packet[0] &= ~FSP_PB0_LBTN;
			}

			/* no multi-finger information */
			ad->last_mt_fgr = 0;

			if (abs_x != 0 && abs_y != 0)
				fgrs = 1;

			FUNC4(dev, 0, fgrs > 0, abs_x, abs_y);
			FUNC4(dev, 1, false, 0, 0);
		}
		if (fgrs == 1 || (fgrs == 2 && !(packet[0] & FSP_PB0_MFMC_FGR2))) {
			FUNC5(dev, ABS_X, abs_x);
			FUNC5(dev, ABS_Y, abs_y);
		}
		FUNC6(dev, BTN_LEFT, packet[0] & 0x01);
		FUNC6(dev, BTN_RIGHT, packet[0] & 0x02);
		FUNC6(dev, BTN_TOUCH, fgrs);
		FUNC6(dev, BTN_TOOL_FINGER, fgrs == 1);
		FUNC6(dev, BTN_TOOL_DOUBLETAP, fgrs == 2);
		break;

	case FSP_PKT_TYPE_NORMAL_OPC:
		/* on-pad click, filter it if necessary */
		if ((ad->flags & FSPDRV_FLAG_EN_OPC) != FSPDRV_FLAG_EN_OPC)
			packet[0] &= ~FSP_PB0_LBTN;
		/* fall through */

	case FSP_PKT_TYPE_NORMAL:
		/* normal packet */
		/* special packet data translation from on-pad packets */
		if (packet[3] != 0) {
			if (packet[3] & FUNC0(0))
				button_status |= 0x01;	/* wheel down */
			if (packet[3] & FUNC0(1))
				button_status |= 0x0f;	/* wheel up */
			if (packet[3] & FUNC0(2))
				button_status |= FUNC0(4);/* horizontal left */
			if (packet[3] & FUNC0(3))
				button_status |= FUNC0(5);/* horizontal right */
			/* push back to packet queue */
			if (button_status != 0)
				packet[3] = button_status;
			rscroll = (packet[3] >> 4) & 1;
			lscroll = (packet[3] >> 5) & 1;
		}
		/*
		 * Processing wheel up/down and extra button events
		 */
		FUNC7(dev, REL_WHEEL,
				 (int)(packet[3] & 8) - (int)(packet[3] & 7));
		FUNC7(dev, REL_HWHEEL, lscroll - rscroll);
		FUNC6(dev, BTN_BACK, lscroll);
		FUNC6(dev, BTN_FORWARD, rscroll);

		/*
		 * Standard PS/2 Mouse
		 */
		FUNC9(dev, packet);
		break;
	}

	FUNC8(dev);

	return PSMOUSE_FULL_PACKET;
}