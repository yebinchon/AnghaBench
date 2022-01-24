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
struct psmouse {scalar_t__ pktcnt; struct cytp_data* private; } ;
struct cytp_data {scalar_t__ pkt_size; } ;
typedef  int /*<<< orphan*/  psmouse_ret_t ;

/* Variables and functions */
 int /*<<< orphan*/  PSMOUSE_FULL_PACKET ; 
 int /*<<< orphan*/  FUNC0 (struct psmouse*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*) ; 

__attribute__((used)) static psmouse_ret_t FUNC2(struct psmouse *psmouse)
{
	struct cytp_data *cytp = psmouse->private;

	if (psmouse->pktcnt >= cytp->pkt_size) {
		FUNC0(psmouse, 0);
		return PSMOUSE_FULL_PACKET;
	}

	return FUNC1(psmouse);
}