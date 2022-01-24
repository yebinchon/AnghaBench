#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
struct serio {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int flags; } ;
struct psmouse {scalar_t__ state; int pktcnt; scalar_t__ badbyte; scalar_t__* packet; int resync_time; void* last; int /*<<< orphan*/  resync_work; TYPE_1__* protocol; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; TYPE_2__ ps2dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  ignore_parity; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int PS2_FLAG_ACK ; 
 int PS2_FLAG_CMD ; 
 scalar_t__ PSMOUSE_ACTIVATED ; 
 scalar_t__ PSMOUSE_HGPK ; 
 scalar_t__ PSMOUSE_IGNORE ; 
 scalar_t__ PSMOUSE_RESYNCING ; 
 scalar_t__ PSMOUSE_RET_BAT ; 
 scalar_t__ PSMOUSE_RET_ID ; 
 unsigned int SERIO_OOB_DATA ; 
 unsigned int SERIO_PARITY ; 
 unsigned int SERIO_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct psmouse*,scalar_t__) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,void*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,void*) ; 
 scalar_t__ FUNC5 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC6 (struct psmouse*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct psmouse*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct psmouse*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct psmouse*,char*,char*,char*) ; 
 struct psmouse* FUNC10 (struct serio*) ; 
 int /*<<< orphan*/  FUNC11 (struct serio*) ; 
 scalar_t__ FUNC12 (void*,void*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static irqreturn_t FUNC14(struct serio *serio,
				     u8 data, unsigned int flags)
{
	struct psmouse *psmouse = FUNC10(serio);

	if (psmouse->state == PSMOUSE_IGNORE)
		goto out;

	if (FUNC13((flags & SERIO_TIMEOUT) ||
		     ((flags & SERIO_PARITY) &&
		      !psmouse->protocol->ignore_parity))) {

		if (psmouse->state == PSMOUSE_ACTIVATED)
			FUNC9(psmouse,
				     "bad data from KBC -%s%s\n",
				     flags & SERIO_TIMEOUT ? " timeout" : "",
				     flags & SERIO_PARITY ? " bad parity" : "");
		FUNC2(&psmouse->ps2dev);
		goto out;
	}

	if (flags & SERIO_OOB_DATA) {
		FUNC6(psmouse, data);
		goto out;
	}

	if (FUNC13(psmouse->ps2dev.flags & PS2_FLAG_ACK))
		if  (FUNC3(&psmouse->ps2dev, data))
			goto out;

	if (FUNC13(psmouse->ps2dev.flags & PS2_FLAG_CMD))
		if  (FUNC4(&psmouse->ps2dev, data))
			goto out;

	FUNC1(&serio->dev, 0);

	if (psmouse->state <= PSMOUSE_RESYNCING)
		goto out;

	if (psmouse->state == PSMOUSE_ACTIVATED &&
	    psmouse->pktcnt && FUNC12(jiffies, psmouse->last + HZ/2)) {
		FUNC7(psmouse, "%s at %s lost synchronization, throwing %d bytes away.\n",
			     psmouse->name, psmouse->phys, psmouse->pktcnt);
		psmouse->badbyte = psmouse->packet[0];
		FUNC0(psmouse, PSMOUSE_RESYNCING);
		FUNC8(psmouse, &psmouse->resync_work, 0);
		goto out;
	}

	psmouse->packet[psmouse->pktcnt++] = data;

	/* Check if this is a new device announcement (0xAA 0x00) */
	if (FUNC13(psmouse->packet[0] == PSMOUSE_RET_BAT && psmouse->pktcnt <= 2)) {
		if (psmouse->pktcnt == 1) {
			psmouse->last = jiffies;
			goto out;
		}

		if (psmouse->packet[1] == PSMOUSE_RET_ID ||
		    (psmouse->protocol->type == PSMOUSE_HGPK &&
		     psmouse->packet[1] == PSMOUSE_RET_BAT)) {
			FUNC0(psmouse, PSMOUSE_IGNORE);
			FUNC11(serio);
			goto out;
		}

		/* Not a new device, try processing first byte normally */
		psmouse->pktcnt = 1;
		if (FUNC5(psmouse))
			goto out;

		psmouse->packet[psmouse->pktcnt++] = data;
	}

	/*
	 * See if we need to force resync because mouse was idle for
	 * too long.
	 */
	if (psmouse->state == PSMOUSE_ACTIVATED &&
	    psmouse->pktcnt == 1 && psmouse->resync_time &&
	    FUNC12(jiffies, psmouse->last + psmouse->resync_time * HZ)) {
		psmouse->badbyte = psmouse->packet[0];
		FUNC0(psmouse, PSMOUSE_RESYNCING);
		FUNC8(psmouse, &psmouse->resync_work, 0);
		goto out;
	}

	psmouse->last = jiffies;
	FUNC5(psmouse);

 out:
	return IRQ_HANDLED;
}