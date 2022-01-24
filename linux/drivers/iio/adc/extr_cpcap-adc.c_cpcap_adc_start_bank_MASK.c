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
struct cpcap_adc_request {int /*<<< orphan*/  timing; } ;
struct cpcap_adc {int done; int /*<<< orphan*/  wq_data_avail; } ;

/* Variables and functions */
 int CPCAP_ADC_MAX_RETRIES ; 
 int /*<<< orphan*/  CPCAP_ADC_TIMING_IMM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct cpcap_adc*,struct cpcap_adc_request*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cpcap_adc *ddata,
				struct cpcap_adc_request *req)
{
	int i, error;

	req->timing = CPCAP_ADC_TIMING_IMM;
	ddata->done = false;

	for (i = 0; i < CPCAP_ADC_MAX_RETRIES; i++) {
		FUNC0(ddata, req);
		error = FUNC2(ddata->wq_data_avail,
							 ddata->done,
							 FUNC1(50));
		if (error > 0)
			return 0;

		if (error == 0) {
			error = -ETIMEDOUT;
			continue;
		}

		if (error < 0)
			return error;
	}

	return error;
}