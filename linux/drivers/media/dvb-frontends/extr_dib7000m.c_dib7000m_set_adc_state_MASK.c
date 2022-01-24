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
typedef  int u16 ;
struct dib7000m_state {int revision; } ;
typedef  enum dibx000_adc_states { ____Placeholder_dibx000_adc_states } dibx000_adc_states ;

/* Variables and functions */
#define  DIBX000_ADC_OFF 133 
#define  DIBX000_ADC_ON 132 
#define  DIBX000_SLOW_ADC_OFF 131 
#define  DIBX000_SLOW_ADC_ON 130 
#define  DIBX000_VBG_DISABLE 129 
#define  DIBX000_VBG_ENABLE 128 
 int FUNC0 (struct dib7000m_state*,int) ; 
 int FUNC1 (struct dib7000m_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct dib7000m_state *state, enum dibx000_adc_states no)
{
	int ret = 0;
	u16 reg_913 = FUNC0(state, 913),
	       reg_914 = FUNC0(state, 914);

	switch (no) {
		case DIBX000_SLOW_ADC_ON:
			reg_914 |= (1 << 1) | (1 << 0);
			ret |= FUNC1(state, 914, reg_914);
			reg_914 &= ~(1 << 1);
			break;

		case DIBX000_SLOW_ADC_OFF:
			reg_914 |=  (1 << 1) | (1 << 0);
			break;

		case DIBX000_ADC_ON:
			if (state->revision == 0x4000) { // workaround for PA/MA
				// power-up ADC
				FUNC1(state, 913, 0);
				FUNC1(state, 914, reg_914 & 0x3);
				// power-down bandgag
				FUNC1(state, 913, (1 << 15));
				FUNC1(state, 914, reg_914 & 0x3);
			}

			reg_913 &= 0x0fff;
			reg_914 &= 0x0003;
			break;

		case DIBX000_ADC_OFF: // leave the VBG voltage on
			reg_913 |= (1 << 14) | (1 << 13) | (1 << 12);
			reg_914 |= (1 << 5) | (1 << 4) | (1 << 3) | (1 << 2);
			break;

		case DIBX000_VBG_ENABLE:
			reg_913 &= ~(1 << 15);
			break;

		case DIBX000_VBG_DISABLE:
			reg_913 |= (1 << 15);
			break;

		default:
			break;
	}

//	dprintk("913: %x, 914: %x\n", reg_913, reg_914);
	ret |= FUNC1(state, 913, reg_913);
	ret |= FUNC1(state, 914, reg_914);

	return ret;
}