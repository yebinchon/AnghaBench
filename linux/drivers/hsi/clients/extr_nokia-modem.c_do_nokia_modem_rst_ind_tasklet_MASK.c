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
struct nokia_modem_device {scalar_t__ ssi_protocol; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct nokia_modem_device *modem = (struct nokia_modem_device *)data;

	if (!modem)
		return;

	FUNC0(modem->device, "CMT rst line change detected\n");

	if (modem->ssi_protocol)
		FUNC1(modem->ssi_protocol);
}