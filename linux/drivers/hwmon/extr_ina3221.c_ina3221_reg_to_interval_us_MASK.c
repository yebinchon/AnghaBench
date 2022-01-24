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
typedef  size_t u32 ;
typedef  int u16 ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int INA3221_CONFIG_CHs_EN_MASK ; 
 size_t FUNC1 (int) ; 
 size_t FUNC2 (int) ; 
 size_t FUNC3 (int) ; 
 size_t* ina3221_avg_samples ; 
 size_t* ina3221_conv_time ; 

__attribute__((used)) static inline u32 FUNC4(u16 config)
{
	u32 channels = FUNC3(config & INA3221_CONFIG_CHs_EN_MASK);
	u32 vbus_ct_idx = FUNC1(config);
	u32 vsh_ct_idx = FUNC2(config);
	u32 samples_idx = FUNC0(config);
	u32 samples = ina3221_avg_samples[samples_idx];
	u32 vbus_ct = ina3221_conv_time[vbus_ct_idx];
	u32 vsh_ct = ina3221_conv_time[vsh_ct_idx];

	/* Calculate total conversion time */
	return channels * (vbus_ct + vsh_ct) * samples;
}