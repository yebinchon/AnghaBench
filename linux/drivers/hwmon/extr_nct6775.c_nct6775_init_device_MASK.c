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
struct nct6775_data {int have_temp; int temp_fixed_num; int have_temp_fixed; int DIODE_MASK; int* temp_type; scalar_t__ REG_DIODE; scalar_t__ REG_VBAT; scalar_t__* reg_temp_config; scalar_t__ REG_CONFIG; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int NUM_TEMP ; 
 int FUNC1 (struct nct6775_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nct6775_data*,scalar_t__,int) ; 

__attribute__((used)) static inline void FUNC3(struct nct6775_data *data)
{
	int i;
	u8 tmp, diode;

	/* Start monitoring if needed */
	if (data->REG_CONFIG) {
		tmp = FUNC1(data, data->REG_CONFIG);
		if (!(tmp & 0x01))
			FUNC2(data, data->REG_CONFIG, tmp | 0x01);
	}

	/* Enable temperature sensors if needed */
	for (i = 0; i < NUM_TEMP; i++) {
		if (!(data->have_temp & FUNC0(i)))
			continue;
		if (!data->reg_temp_config[i])
			continue;
		tmp = FUNC1(data, data->reg_temp_config[i]);
		if (tmp & 0x01)
			FUNC2(data, data->reg_temp_config[i],
					    tmp & 0xfe);
	}

	/* Enable VBAT monitoring if needed */
	tmp = FUNC1(data, data->REG_VBAT);
	if (!(tmp & 0x01))
		FUNC2(data, data->REG_VBAT, tmp | 0x01);

	diode = FUNC1(data, data->REG_DIODE);

	for (i = 0; i < data->temp_fixed_num; i++) {
		if (!(data->have_temp_fixed & FUNC0(i)))
			continue;
		if ((tmp & (data->DIODE_MASK << i)))	/* diode */
			data->temp_type[i]
			  = 3 - ((diode >> i) & data->DIODE_MASK);
		else				/* thermistor */
			data->temp_type[i] = 4;
	}
}