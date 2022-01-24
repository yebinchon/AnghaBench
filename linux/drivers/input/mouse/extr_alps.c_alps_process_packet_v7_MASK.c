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
struct psmouse {unsigned char* packet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*) ; 

__attribute__((used)) static void FUNC2(struct psmouse *psmouse)
{
	unsigned char *packet = psmouse->packet;

	if (packet[0] == 0x48 && (packet[4] & 0x47) == 0x06)
		FUNC1(psmouse);
	else
		FUNC0(psmouse);
}