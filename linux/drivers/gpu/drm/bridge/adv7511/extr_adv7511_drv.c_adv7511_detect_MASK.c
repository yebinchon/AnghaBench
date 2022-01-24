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
struct drm_connector {int dummy; } ;
struct adv7511 {int status; int /*<<< orphan*/  regmap; scalar_t__ powered; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7511_REG_POWER2 ; 
 int /*<<< orphan*/  ADV7511_REG_POWER2_HPD_SRC_BOTH ; 
 int /*<<< orphan*/  ADV7511_REG_POWER2_HPD_SRC_MASK ; 
 int /*<<< orphan*/  ADV7511_REG_STATUS ; 
 unsigned int ADV7511_STATUS_HPD ; 
 int /*<<< orphan*/  FUNC0 (struct adv7511*,struct drm_connector*) ; 
 int FUNC1 (struct adv7511*) ; 
 int /*<<< orphan*/  FUNC2 (struct adv7511*) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum drm_connector_status
FUNC6(struct adv7511 *adv7511, struct drm_connector *connector)
{
	enum drm_connector_status status;
	unsigned int val;
	bool hpd;
	int ret;

	ret = FUNC4(adv7511->regmap, ADV7511_REG_STATUS, &val);
	if (ret < 0)
		return connector_status_disconnected;

	if (val & ADV7511_STATUS_HPD)
		status = connector_status_connected;
	else
		status = connector_status_disconnected;

	hpd = FUNC1(adv7511);

	/* The chip resets itself when the cable is disconnected, so in case
	 * there is a pending HPD interrupt and the cable is connected there was
	 * at least one transition from disconnected to connected and the chip
	 * has to be reinitialized. */
	if (status == connector_status_connected && hpd && adv7511->powered) {
		FUNC3(adv7511->regmap);
		FUNC2(adv7511);
		FUNC0(adv7511, connector);
		if (adv7511->status == connector_status_connected)
			status = connector_status_disconnected;
	} else {
		/* Renable HPD sensing */
		FUNC5(adv7511->regmap, ADV7511_REG_POWER2,
				   ADV7511_REG_POWER2_HPD_SRC_MASK,
				   ADV7511_REG_POWER2_HPD_SRC_BOTH);
	}

	adv7511->status = status;
	return status;
}