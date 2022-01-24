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
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct adv7511 {int /*<<< orphan*/  cec_adap; int /*<<< orphan*/  rgb; int /*<<< orphan*/  powered; int /*<<< orphan*/  regmap; TYPE_1__* i2c_edid; } ;
struct TYPE_2__ {int addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7511_REG_EDID_I2C_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct adv7511*) ; 
 int /*<<< orphan*/  FUNC1 (struct adv7511*) ; 
 int /*<<< orphan*/  adv7511_get_edid_block ; 
 int /*<<< orphan*/  FUNC2 (struct adv7511*,struct drm_connector*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct edid*) ; 
 unsigned int FUNC4 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC6 (struct edid*) ; 
 struct edid* FUNC7 (struct drm_connector*,int /*<<< orphan*/ ,struct adv7511*) ; 
 int /*<<< orphan*/  FUNC8 (struct edid*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct adv7511 *adv7511,
			     struct drm_connector *connector)
{
	struct edid *edid;
	unsigned int count;

	/* Reading the EDID only works if the device is powered */
	if (!adv7511->powered) {
		unsigned int edid_i2c_addr =
					(adv7511->i2c_edid->addr << 1);

		FUNC1(adv7511);

		/* Reset the EDID_I2C_ADDR register as it might be cleared */
		FUNC9(adv7511->regmap, ADV7511_REG_EDID_I2C_ADDR,
			     edid_i2c_addr);
	}

	edid = FUNC7(connector, adv7511_get_edid_block, adv7511);

	if (!adv7511->powered)
		FUNC0(adv7511);


	FUNC5(connector, edid);
	count = FUNC4(connector, edid);

	FUNC2(adv7511, connector, adv7511->rgb,
			       FUNC6(edid));

	FUNC3(adv7511->cec_adap, edid);

	FUNC8(edid);

	return count;
}