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
typedef  int u8 ;
struct ina2xx_data {unsigned int power_lsb_uW; int current_lsb_uA; TYPE_1__* config; } ;
typedef  int s16 ;
struct TYPE_2__ {int shunt_div; unsigned int bus_voltage_shift; unsigned int bus_voltage_lsb; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
#define  INA2XX_BUS_VOLTAGE 132 
#define  INA2XX_CALIBRATION 131 
#define  INA2XX_CURRENT 130 
#define  INA2XX_POWER 129 
#define  INA2XX_SHUNT_VOLTAGE 128 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct ina2xx_data *data, u8 reg,
			    unsigned int regval)
{
	int val;

	switch (reg) {
	case INA2XX_SHUNT_VOLTAGE:
		/* signed register */
		val = FUNC0((s16)regval, data->config->shunt_div);
		break;
	case INA2XX_BUS_VOLTAGE:
		val = (regval >> data->config->bus_voltage_shift)
		  * data->config->bus_voltage_lsb;
		val = FUNC0(val, 1000);
		break;
	case INA2XX_POWER:
		val = regval * data->power_lsb_uW;
		break;
	case INA2XX_CURRENT:
		/* signed register, result in mA */
		val = (s16)regval * data->current_lsb_uA;
		val = FUNC0(val, 1000);
		break;
	case INA2XX_CALIBRATION:
		val = regval;
		break;
	default:
		/* programmer goofed */
		FUNC1(1);
		val = 0;
		break;
	}

	return val;
}