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
struct psmouse {int pktcnt; unsigned char* packet; struct cytp_data* private; } ;
struct cytp_data {int pkt_size; int mode; } ;
typedef  int /*<<< orphan*/  psmouse_ret_t ;

/* Variables and functions */
 int CYTP_BIT_ABS_NO_PRESSURE ; 
 int CYTP_BIT_ABS_REL_MASK ; 
 int /*<<< orphan*/  PSMOUSE_BAD_DATA ; 
 int /*<<< orphan*/  PSMOUSE_FULL_PACKET ; 
 int /*<<< orphan*/  PSMOUSE_GOOD_DATA ; 
 int FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*,int) ; 

__attribute__((used)) static psmouse_ret_t FUNC3(struct psmouse *psmouse)
{
	int contact_cnt;
	int index = psmouse->pktcnt - 1;
	unsigned char *packet = psmouse->packet;
	struct cytp_data *cytp = psmouse->private;

	if (index < 0 || index > cytp->pkt_size)
		return PSMOUSE_BAD_DATA;

	if (index == 0 && (packet[0] & 0xfc) == 0) {
		/* call packet process for reporting finger leave. */
		FUNC1(psmouse, 1);
		return PSMOUSE_FULL_PACKET;
	}

	/*
	 * Perform validation (and adjust packet size) based only on the
	 * first byte; allow all further bytes through.
	 */
	if (index != 0)
		return PSMOUSE_GOOD_DATA;

	/*
	 * If absolute/relative mode bit has not been set yet, just pass
	 * the byte through.
	 */
	if ((cytp->mode & CYTP_BIT_ABS_REL_MASK) == 0)
		return PSMOUSE_GOOD_DATA;

	if ((packet[0] & 0x08) == 0x08)
		return PSMOUSE_BAD_DATA;

	contact_cnt = FUNC0(packet[0]);
	if (cytp->mode & CYTP_BIT_ABS_NO_PRESSURE)
		FUNC2(psmouse, contact_cnt == 2 ? 7 : 4);
	else
		FUNC2(psmouse, contact_cnt == 2 ? 8 : 5);

	return PSMOUSE_GOOD_DATA;
}