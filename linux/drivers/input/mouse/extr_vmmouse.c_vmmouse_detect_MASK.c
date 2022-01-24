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
typedef  int u32 ;
struct psmouse {int model; int /*<<< orphan*/  name; int /*<<< orphan*/  vendor; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GETVERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  VMMOUSE_NAME ; 
 int VMMOUSE_PROTO_MAGIC ; 
 int /*<<< orphan*/  VMMOUSE_VENDOR ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct psmouse *psmouse, bool set_properties)
{
	u32 response, version, dummy1, dummy2;

	if (!FUNC2()) {
		FUNC1(psmouse,
			    "VMMouse not running on supported hypervisor.\n");
		return -ENXIO;
	}

	/* Check if the device is present */
	response = ~VMMOUSE_PROTO_MAGIC;
	FUNC0(GETVERSION, 0, version, response, dummy1, dummy2);
	if (response != VMMOUSE_PROTO_MAGIC || version == 0xffffffffU)
		return -ENXIO;

	if (set_properties) {
		psmouse->vendor = VMMOUSE_VENDOR;
		psmouse->name = VMMOUSE_NAME;
		psmouse->model = version;
	}

	return 0;
}