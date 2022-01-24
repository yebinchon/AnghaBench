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
typedef  scalar_t__ u16 ;
struct max9611_dev {int dummy; } ;
typedef  enum max9611_csa_gain { ____Placeholder_max9611_csa_gain } max9611_csa_gain ;
typedef  enum max9611_conf_ids { ____Placeholder_max9611_conf_ids } max9611_conf_ids ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int CONF_SENSE_1x ; 
 int CONF_SENSE_4x ; 
 int CONF_SENSE_8x ; 
 int EIO ; 
 int FUNC1 (struct max9611_dev*,int,scalar_t__*) ; 

__attribute__((used)) static int FUNC2(struct max9611_dev *max9611,
				    u16 *adc_raw,
				    enum max9611_csa_gain *csa_gain)
{
	enum max9611_conf_ids gain_selectors[] = {
		CONF_SENSE_1x,
		CONF_SENSE_4x,
		CONF_SENSE_8x
	};
	unsigned int i;
	int ret;

	for (i = 0; i < FUNC0(gain_selectors); ++i) {
		ret = FUNC1(max9611, gain_selectors[i], adc_raw);
		if (ret)
			return ret;

		if (*adc_raw > 0) {
			*csa_gain = (enum max9611_csa_gain)gain_selectors[i];
			return 0;
		}
	}

	return -EIO;
}