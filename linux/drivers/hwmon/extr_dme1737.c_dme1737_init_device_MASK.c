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
typedef  int u8 ;
struct i2c_client {int addr; } ;
struct dme1737_data {int type; int config; int config2; int has_features; int* pwm_config; int* pwm_acz; int /*<<< orphan*/  vrm; int /*<<< orphan*/  in_nominal; struct i2c_client* client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DME1737_REG_CONFIG ; 
 int /*<<< orphan*/  DME1737_REG_CONFIG2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DME1737_REG_TACH_PWM ; 
 int /*<<< orphan*/  DO_REPORT ; 
 int EFAULT ; 
 int FUNC2 (int) ; 
 int HAS_IN7 ; 
 int FUNC3 (int) ; 
 int HAS_PWM_MIN ; 
 int HAS_TEMP_OFFSET ; 
 int HAS_VID ; 
 int HAS_ZONE3 ; 
 int HAS_ZONE_HYST ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 struct dme1737_data* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*,...) ; 
#define  dme1737 131 
 scalar_t__ FUNC11 (int,struct dme1737_data*) ; 
 void* FUNC12 (struct dme1737_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct dme1737_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  force_start ; 
#define  sch311x 130 
#define  sch5027 129 
#define  sch5127 128 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int FUNC15(struct device *dev)
{
	struct dme1737_data *data = FUNC8(dev);
	struct i2c_client *client = data->client;
	int ix;
	u8 reg;

	/* Point to the right nominal voltages array */
	data->in_nominal = FUNC4(data->type);

	data->config = FUNC12(data, DME1737_REG_CONFIG);
	/* Inform if part is not monitoring/started */
	if (!(data->config & 0x01)) {
		if (!force_start) {
			FUNC7(dev,
				"Device is not monitoring. Use the force_start load parameter to override.\n");
			return -EFAULT;
		}

		/* Force monitoring */
		data->config |= 0x01;
		FUNC13(data, DME1737_REG_CONFIG, data->config);
	}
	/* Inform if part is not ready */
	if (!(data->config & 0x04)) {
		FUNC7(dev, "Device is not ready.\n");
		return -EFAULT;
	}

	/*
	 * Determine which optional fan and pwm features are enabled (only
	 * valid for I2C devices)
	 */
	if (client) {   /* I2C chip */
		data->config2 = FUNC12(data, DME1737_REG_CONFIG2);
		/* Check if optional fan3 input is enabled */
		if (data->config2 & 0x04)
			data->has_features |= FUNC2(2);

		/*
		 * Fan4 and pwm3 are only available if the client's I2C address
		 * is the default 0x2e. Otherwise the I/Os associated with
		 * these functions are used for addr enable/select.
		 */
		if (client->addr == 0x2e)
			data->has_features |= FUNC2(3) | FUNC3(2);

		/*
		 * Determine which of the optional fan[5-6] and pwm[5-6]
		 * features are enabled. For this, we need to query the runtime
		 * registers through the Super-IO LPC interface. Try both
		 * config ports 0x2e and 0x4e.
		 */
		if (FUNC11(0x2e, data) &&
		    FUNC11(0x4e, data)) {
			FUNC10(dev,
				 "Failed to query Super-IO for optional features.\n");
		}
	}

	/* Fan[1-2] and pwm[1-2] are present in all chips */
	data->has_features |= FUNC2(0) | FUNC2(1) | FUNC3(0) | FUNC3(1);

	/* Chip-dependent features */
	switch (data->type) {
	case dme1737:
		data->has_features |= HAS_TEMP_OFFSET | HAS_VID | HAS_ZONE3 |
			HAS_ZONE_HYST | HAS_PWM_MIN;
		break;
	case sch311x:
		data->has_features |= HAS_TEMP_OFFSET | HAS_ZONE3 |
			HAS_ZONE_HYST | HAS_PWM_MIN | FUNC2(2) | FUNC3(2);
		break;
	case sch5027:
		data->has_features |= HAS_ZONE3;
		break;
	case sch5127:
		data->has_features |= FUNC2(2) | FUNC3(2) | HAS_IN7;
		break;
	default:
		break;
	}

	FUNC9(dev,
		 "Optional features: pwm3=%s, pwm5=%s, pwm6=%s, fan3=%s, fan4=%s, fan5=%s, fan6=%s.\n",
		 (data->has_features & FUNC3(2)) ? "yes" : "no",
		 (data->has_features & FUNC3(4)) ? "yes" : "no",
		 (data->has_features & FUNC3(5)) ? "yes" : "no",
		 (data->has_features & FUNC2(2)) ? "yes" : "no",
		 (data->has_features & FUNC2(3)) ? "yes" : "no",
		 (data->has_features & FUNC2(4)) ? "yes" : "no",
		 (data->has_features & FUNC2(5)) ? "yes" : "no");

	reg = FUNC12(data, DME1737_REG_TACH_PWM);
	/* Inform if fan-to-pwm mapping differs from the default */
	if (client && reg != 0xa4) {   /* I2C chip */
		FUNC10(dev,
			 "Non-standard fan to pwm mapping: fan1->pwm%d, fan2->pwm%d, fan3->pwm%d, fan4->pwm%d. %s\n",
			 (reg & 0x03) + 1, ((reg >> 2) & 0x03) + 1,
			 ((reg >> 4) & 0x03) + 1, ((reg >> 6) & 0x03) + 1,
			 DO_REPORT);
	} else if (!client && reg != 0x24) {   /* ISA chip */
		FUNC10(dev,
			 "Non-standard fan to pwm mapping: fan1->pwm%d, fan2->pwm%d, fan3->pwm%d. %s\n",
			 (reg & 0x03) + 1, ((reg >> 2) & 0x03) + 1,
			 ((reg >> 4) & 0x03) + 1, DO_REPORT);
	}

	/*
	 * Switch pwm[1-3] to manual mode if they are currently disabled and
	 * set the duty-cycles to 0% (which is identical to the PWMs being
	 * disabled).
	 */
	if (!(data->config & 0x02)) {
		for (ix = 0; ix < 3; ix++) {
			data->pwm_config[ix] = FUNC12(data,
						FUNC1(ix));
			if ((data->has_features & FUNC3(ix)) &&
			    (FUNC5(data->pwm_config[ix]) == -1)) {
				FUNC9(dev,
					 "Switching pwm%d to manual mode.\n",
					 ix + 1);
				data->pwm_config[ix] = FUNC6(1,
							data->pwm_config[ix]);
				FUNC13(data, FUNC0(ix), 0);
				FUNC13(data,
					      FUNC1(ix),
					      data->pwm_config[ix]);
			}
		}
	}

	/* Initialize the default PWM auto channels zone (acz) assignments */
	data->pwm_acz[0] = 1;	/* pwm1 -> zone1 */
	data->pwm_acz[1] = 2;	/* pwm2 -> zone2 */
	data->pwm_acz[2] = 4;	/* pwm3 -> zone3 */

	/* Set VRM */
	if (data->has_features & HAS_VID)
		data->vrm = FUNC14();

	return 0;
}