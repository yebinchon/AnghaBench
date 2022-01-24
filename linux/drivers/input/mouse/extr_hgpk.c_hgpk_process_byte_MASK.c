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
struct psmouse {scalar_t__ pktcnt; scalar_t__ pktsize; int /*<<< orphan*/  packet; struct hgpk_data* private; } ;
struct hgpk_data {scalar_t__ mode; scalar_t__ recalib_window; int /*<<< orphan*/  recalib_wq; } ;
typedef  int /*<<< orphan*/  psmouse_ret_t ;

/* Variables and functions */
 scalar_t__ HGPK_MODE_MOUSE ; 
 int /*<<< orphan*/  PSMOUSE_BAD_DATA ; 
 int /*<<< orphan*/  PSMOUSE_FULL_PACKET ; 
 int /*<<< orphan*/  PSMOUSE_GOOD_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct psmouse*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  post_interrupt_delay ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct psmouse*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static psmouse_ret_t FUNC7(struct psmouse *psmouse)
{
	struct hgpk_data *priv = psmouse->private;

	if (!FUNC0(psmouse, psmouse->packet))
		return PSMOUSE_BAD_DATA;

	if (psmouse->pktcnt >= psmouse->pktsize) {
		if (priv->mode == HGPK_MODE_MOUSE)
			FUNC2(psmouse);
		else
			FUNC1(psmouse);
		return PSMOUSE_FULL_PACKET;
	}

	if (priv->recalib_window) {
		if (FUNC6(jiffies, priv->recalib_window)) {
			/*
			 * ugh, got a packet inside our recalibration
			 * window, schedule another recalibration.
			 */
			FUNC4(psmouse,
				    "packet inside calibration window, queueing another recalibration\n");
			FUNC5(psmouse, &priv->recalib_wq,
					FUNC3(post_interrupt_delay));
		}
		priv->recalib_window = 0;
	}

	return PSMOUSE_GOOD_DATA;
}