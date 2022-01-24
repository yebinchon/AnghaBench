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
typedef  int u32 ;
struct lima_ip {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIMA_GP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lima_ip*) ; 

__attribute__((used)) static void FUNC3(struct lima_ip *ip)
{
	u32 version, major, minor;
	char *name;

	version = FUNC1(LIMA_GP_VERSION);
	major = (version >> 8) & 0xFF;
	minor = version & 0xFF;
	switch (version >> 16) {
	case 0xA07:
	    name = "mali200";
		break;
	case 0xC07:
		name = "mali300";
		break;
	case 0xB07:
		name = "mali400";
		break;
	case 0xD07:
		name = "mali450";
		break;
	default:
		name = "unknown";
		break;
	}
	FUNC0(ip->dev->dev, "%s - %s version major %d minor %d\n",
		 FUNC2(ip), name, major, minor);
}