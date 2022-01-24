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
struct dme1737_data {int valid; int has_features; int vid; int* in; int* in_min; int* in_max; int* temp; int* temp_min; int* temp_max; int* temp_offset; int* fan; int* fan_min; int* fan_opt; int* fan_max; int* pwm; int* pwm_freq; int* pwm_config; int* pwm_min; int* pwm_rr; int* zone_low; scalar_t__ type; int* zone_abs; int* zone_hyst; int alarms; int /*<<< orphan*/  update_lock; void* last_update; int /*<<< orphan*/  client; void* last_vbat; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 scalar_t__ DME1737_REG_ALARM1 ; 
 scalar_t__ DME1737_REG_ALARM2 ; 
 scalar_t__ DME1737_REG_ALARM3 ; 
 scalar_t__ DME1737_REG_CONFIG ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 size_t* DME1737_REG_IN_LSB ; 
 int* DME1737_REG_IN_LSB_SHL ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 size_t* DME1737_REG_TEMP_LSB ; 
 int* DME1737_REG_TEMP_LSB_SHL ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 
 scalar_t__ FUNC17 (int) ; 
 scalar_t__ DME1737_REG_VID ; 
 scalar_t__ FUNC18 (int) ; 
 scalar_t__ FUNC19 (int) ; 
 scalar_t__ FUNC20 (int) ; 
 int FUNC21 (int) ; 
 int HAS_IN7 ; 
 int FUNC22 (int) ; 
 int HAS_TEMP_OFFSET ; 
 int HAS_VID ; 
 int HAS_ZONE3 ; 
 int HAS_ZONE_HYST ; 
 int HZ ; 
 struct dme1737_data* FUNC23 (struct device*) ; 
 int FUNC24 (struct dme1737_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (struct dme1737_data*,scalar_t__,int) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ sch5127 ; 
 scalar_t__ FUNC28 (void*,void*) ; 

__attribute__((used)) static struct dme1737_data *FUNC29(struct device *dev)
{
	struct dme1737_data *data = FUNC23(dev);
	int ix;
	u8 lsb[6];

	FUNC26(&data->update_lock);

	/* Enable a Vbat monitoring cycle every 10 mins */
	if (FUNC28(jiffies, data->last_vbat + 600 * HZ) || !data->valid) {
		FUNC25(data, DME1737_REG_CONFIG, FUNC24(data,
						DME1737_REG_CONFIG) | 0x10);
		data->last_vbat = jiffies;
	}

	/* Sample register contents every 1 sec */
	if (FUNC28(jiffies, data->last_update + HZ) || !data->valid) {
		if (data->has_features & HAS_VID) {
			data->vid = FUNC24(data, DME1737_REG_VID) &
				0x3f;
		}

		/* In (voltage) registers */
		for (ix = 0; ix < FUNC0(data->in); ix++) {
			/*
			 * Voltage inputs are stored as 16 bit values even
			 * though they have only 12 bits resolution. This is
			 * to make it consistent with the temp inputs.
			 */
			if (ix == 7 && !(data->has_features & HAS_IN7))
				continue;
			data->in[ix] = FUNC24(data,
					FUNC5(ix)) << 8;
			data->in_min[ix] = FUNC24(data,
					FUNC7(ix));
			data->in_max[ix] = FUNC24(data,
					FUNC6(ix));
		}

		/* Temp registers */
		for (ix = 0; ix < FUNC0(data->temp); ix++) {
			/*
			 * Temp inputs are stored as 16 bit values even
			 * though they have only 12 bits resolution. This is
			 * to take advantage of implicit conversions between
			 * register values (2's complement) and temp values
			 * (signed decimal).
			 */
			data->temp[ix] = FUNC24(data,
					FUNC14(ix)) << 8;
			data->temp_min[ix] = FUNC24(data,
					FUNC16(ix));
			data->temp_max[ix] = FUNC24(data,
					FUNC15(ix));
			if (data->has_features & HAS_TEMP_OFFSET) {
				data->temp_offset[ix] = FUNC24(data,
						FUNC17(ix));
			}
		}

		/*
		 * In and temp LSB registers
		 * The LSBs are latched when the MSBs are read, so the order in
		 * which the registers are read (MSB first, then LSB) is
		 * important!
		 */
		for (ix = 0; ix < FUNC0(lsb); ix++) {
			if (ix == 5 && !(data->has_features & HAS_IN7))
				continue;
			lsb[ix] = FUNC24(data,
					FUNC8(ix));
		}
		for (ix = 0; ix < FUNC0(data->in); ix++) {
			if (ix == 7 && !(data->has_features & HAS_IN7))
				continue;
			data->in[ix] |= (lsb[DME1737_REG_IN_LSB[ix]] <<
					DME1737_REG_IN_LSB_SHL[ix]) & 0xf0;
		}
		for (ix = 0; ix < FUNC0(data->temp); ix++) {
			data->temp[ix] |= (lsb[DME1737_REG_TEMP_LSB[ix]] <<
					DME1737_REG_TEMP_LSB_SHL[ix]) & 0xf0;
		}

		/* Fan registers */
		for (ix = 0; ix < FUNC0(data->fan); ix++) {
			/*
			 * Skip reading registers if optional fans are not
			 * present
			 */
			if (!(data->has_features & FUNC21(ix)))
				continue;
			data->fan[ix] = FUNC24(data,
					FUNC1(ix));
			data->fan[ix] |= FUNC24(data,
					FUNC1(ix) + 1) << 8;
			data->fan_min[ix] = FUNC24(data,
					FUNC3(ix));
			data->fan_min[ix] |= FUNC24(data,
					FUNC3(ix) + 1) << 8;
			data->fan_opt[ix] = FUNC24(data,
					FUNC4(ix));
			/* fan_max exists only for fan[5-6] */
			if (ix > 3) {
				data->fan_max[ix - 4] = FUNC24(data,
					FUNC2(ix));
			}
		}

		/* PWM registers */
		for (ix = 0; ix < FUNC0(data->pwm); ix++) {
			/*
			 * Skip reading registers if optional PWMs are not
			 * present
			 */
			if (!(data->has_features & FUNC22(ix)))
				continue;
			data->pwm[ix] = FUNC24(data,
					FUNC9(ix));
			data->pwm_freq[ix] = FUNC24(data,
					FUNC11(ix));
			/* pwm_config and pwm_min exist only for pwm[1-3] */
			if (ix < 3) {
				data->pwm_config[ix] = FUNC24(data,
						FUNC10(ix));
				data->pwm_min[ix] = FUNC24(data,
						FUNC12(ix));
			}
		}
		for (ix = 0; ix < FUNC0(data->pwm_rr); ix++) {
			data->pwm_rr[ix] = FUNC24(data,
						FUNC13(ix));
		}

		/* Thermal zone registers */
		for (ix = 0; ix < FUNC0(data->zone_low); ix++) {
			/* Skip reading registers if zone3 is not present */
			if ((ix == 2) && !(data->has_features & HAS_ZONE3))
				continue;
			/* sch5127 zone2 registers are special */
			if ((ix == 1) && (data->type == sch5127)) {
				data->zone_low[1] = FUNC24(data,
						FUNC20(2));
				data->zone_abs[1] = FUNC24(data,
						FUNC18(2));
			} else {
				data->zone_low[ix] = FUNC24(data,
						FUNC20(ix));
				data->zone_abs[ix] = FUNC24(data,
						FUNC18(ix));
			}
		}
		if (data->has_features & HAS_ZONE_HYST) {
			for (ix = 0; ix < FUNC0(data->zone_hyst); ix++) {
				data->zone_hyst[ix] = FUNC24(data,
						FUNC19(ix));
			}
		}

		/* Alarm registers */
		data->alarms = FUNC24(data,
						DME1737_REG_ALARM1);
		/*
		 * Bit 7 tells us if the other alarm registers are non-zero and
		 * therefore also need to be read
		 */
		if (data->alarms & 0x80) {
			data->alarms |= FUNC24(data,
						DME1737_REG_ALARM2) << 8;
			data->alarms |= FUNC24(data,
						DME1737_REG_ALARM3) << 16;
		}

		/*
		 * The ISA chips require explicit clearing of alarm bits.
		 * Don't worry, an alarm will come back if the condition
		 * that causes it still exists
		 */
		if (!data->client) {
			if (data->alarms & 0xff0000)
				FUNC25(data, DME1737_REG_ALARM3, 0xff);
			if (data->alarms & 0xff00)
				FUNC25(data, DME1737_REG_ALARM2, 0xff);
			if (data->alarms & 0xff)
				FUNC25(data, DME1737_REG_ALARM1, 0xff);
		}

		data->last_update = jiffies;
		data->valid = 1;
	}

	FUNC27(&data->update_lock);

	return data;
}