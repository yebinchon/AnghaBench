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
struct cpcap_adc_request {int bank_index; int result; } ;
struct cpcap_adc {scalar_t__ vendor; int /*<<< orphan*/  reg; } ;
struct TYPE_2__ {short cal_offset; } ;

/* Variables and functions */
 size_t CPCAP_ADC_BATTI ; 
 size_t CPCAP_ADC_CHG_ISENSE ; 
 int CPCAP_REG_ADCAL1 ; 
 int CPCAP_REG_ADCAL2 ; 
 int CPCAP_REG_ADCD0 ; 
 scalar_t__ CPCAP_VENDOR_TI ; 
 TYPE_1__* bank_conversion ; 
 int /*<<< orphan*/  FUNC0 (struct cpcap_adc_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpcap_adc_request*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC3(struct cpcap_adc *ddata,
				      struct cpcap_adc_request *req)
{
	int calibration_data, error, addr;

	if (ddata->vendor == CPCAP_VENDOR_TI) {
		error = FUNC2(ddata->reg, CPCAP_REG_ADCAL1,
				    &calibration_data);
		if (error)
			return error;
		bank_conversion[CPCAP_ADC_CHG_ISENSE].cal_offset =
			((short)calibration_data * -1) + 512;

		error = FUNC2(ddata->reg, CPCAP_REG_ADCAL2,
				    &calibration_data);
		if (error)
			return error;
		bank_conversion[CPCAP_ADC_BATTI].cal_offset =
			((short)calibration_data * -1) + 512;
	}

	addr = CPCAP_REG_ADCD0 + req->bank_index * 4;

	error = FUNC2(ddata->reg, addr, &req->result);
	if (error)
		return error;

	req->result &= 0x3ff;
	FUNC1(req);
	FUNC0(req);

	return 0;
}