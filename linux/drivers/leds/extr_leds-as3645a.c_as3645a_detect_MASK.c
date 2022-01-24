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
struct device {int dummy; } ;
struct as3645a {TYPE_1__* client; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS_BOOST_CURRENT_DISABLE ; 
 int /*<<< orphan*/  AS_BOOST_REG ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  AS_DESIGN_INFO_REG ; 
 int /*<<< orphan*/  AS_PASSWORD_REG ; 
 int /*<<< orphan*/  AS_PASSWORD_UNLOCK_VALUE ; 
 int /*<<< orphan*/  AS_VERSION_CONTROL_REG ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int ENODEV ; 
 int FUNC4 (struct as3645a*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct as3645a*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,char const*,int,int) ; 

__attribute__((used)) static int FUNC8(struct as3645a *flash)
{
	struct device *dev = &flash->client->dev;
	int rval, man, model, rfu, version;
	const char *vendor;

	rval = FUNC4(flash, AS_DESIGN_INFO_REG);
	if (rval < 0) {
		FUNC6(dev, "can't read design info reg\n");
		return rval;
	}

	man = FUNC0(rval);
	model = FUNC1(rval);

	rval = FUNC4(flash, AS_VERSION_CONTROL_REG);
	if (rval < 0) {
		FUNC6(dev, "can't read version control reg\n");
		return rval;
	}

	rfu = FUNC2(rval);
	version = FUNC3(rval);

	/* Verify the chip model and version. */
	if (model != 0x01 || rfu != 0x00) {
		FUNC6(dev, "AS3645A not detected (model %d rfu %d)\n",
			model, rfu);
		return -ENODEV;
	}

	switch (man) {
	case 1:
		vendor = "AMS, Austria Micro Systems";
		break;
	case 2:
		vendor = "ADI, Analog Devices Inc.";
		break;
	case 3:
		vendor = "NSC, National Semiconductor";
		break;
	case 4:
		vendor = "NXP";
		break;
	case 5:
		vendor = "TI, Texas Instrument";
		break;
	default:
		vendor = "Unknown";
	}

	FUNC7(dev, "Chip vendor: %s (%d) Version: %d\n", vendor,
		 man, version);

	rval = FUNC5(flash, AS_PASSWORD_REG, AS_PASSWORD_UNLOCK_VALUE);
	if (rval < 0)
		return rval;

	return FUNC5(flash, AS_BOOST_REG, AS_BOOST_CURRENT_DISABLE);
}