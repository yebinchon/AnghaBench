#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct pm8xxx_xoadc {int /*<<< orphan*/  lock; int /*<<< orphan*/  map; int /*<<< orphan*/  dev; int /*<<< orphan*/  complete; TYPE_1__* variant; } ;
struct pm8xxx_chan_info {int amux_ip_rsv; unsigned int decimation; TYPE_2__* hwchan; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {unsigned int amux_channel; unsigned int pre_scale_mux; } ;
struct TYPE_3__ {scalar_t__ broken_ratiometric; } ;

/* Variables and functions */
 unsigned int ADC_AMUX_PREMUX_SHIFT ; 
 unsigned int ADC_AMUX_SEL_SHIFT ; 
 int /*<<< orphan*/  ADC_ARB_USRP_AMUX_CNTRL ; 
 int /*<<< orphan*/  ADC_ARB_USRP_ANA_PARAM ; 
 unsigned int ADC_ARB_USRP_ANA_PARAM_DIS ; 
 unsigned int ADC_ARB_USRP_ANA_PARAM_EN ; 
 int /*<<< orphan*/  ADC_ARB_USRP_CNTRL ; 
 unsigned int ADC_ARB_USRP_CNTRL_EN_ARB ; 
 unsigned int ADC_ARB_USRP_CNTRL_REQ ; 
 int /*<<< orphan*/  ADC_ARB_USRP_DATA0 ; 
 int /*<<< orphan*/  ADC_ARB_USRP_DATA1 ; 
 int /*<<< orphan*/  ADC_ARB_USRP_DIG_PARAM ; 
 unsigned int ADC_ARB_USRP_DIG_PARAM_SEL_SHIFT0 ; 
 unsigned int ADC_ARB_USRP_DIG_PARAM_SEL_SHIFT1 ; 
 int /*<<< orphan*/  ADC_ARB_USRP_RSV ; 
 int ADC_ARB_USRP_RSV_DTEST0 ; 
 int ADC_ARB_USRP_RSV_DTEST1 ; 
 int ADC_ARB_USRP_RSV_IP_SEL0 ; 
 int ADC_ARB_USRP_RSV_IP_SEL1 ; 
 int ADC_ARB_USRP_RSV_OP ; 
 int ADC_ARB_USRP_RSV_RST ; 
 int ADC_ARB_USRP_RSV_TRM ; 
 unsigned int ADC_DIG_PARAM_DEC_SHIFT ; 
 int ADC_RSV_IP_SEL_SHIFT ; 
 int ETIMEDOUT ; 
 unsigned int PM8XXX_CHANNEL_MUXOFF ; 
 int /*<<< orphan*/  VADC_CONV_TIME_MAX_US ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct pm8xxx_xoadc *adc,
				   const struct pm8xxx_chan_info *ch,
				   u8 rsv, u16 *adc_code,
				   bool force_ratiometric)
{
	int ret;
	unsigned int val;
	u8 rsvmask, rsvval;
	u8 lsb, msb;

	FUNC0(adc->dev, "read channel \"%s\", amux %d, prescale/mux: %d, rsv %d\n",
		ch->name, ch->hwchan->amux_channel, ch->hwchan->pre_scale_mux, rsv);

	FUNC2(&adc->lock);

	/* Mux in this channel */
	val = ch->hwchan->amux_channel << ADC_AMUX_SEL_SHIFT;
	val |= ch->hwchan->pre_scale_mux << ADC_AMUX_PREMUX_SHIFT;
	ret = FUNC6(adc->map, ADC_ARB_USRP_AMUX_CNTRL, val);
	if (ret)
		goto unlock;

	/* Set up ratiometric scale value, mask off all bits except these */
	rsvmask = (ADC_ARB_USRP_RSV_RST | ADC_ARB_USRP_RSV_DTEST0 |
		   ADC_ARB_USRP_RSV_DTEST1 | ADC_ARB_USRP_RSV_OP);
	if (adc->variant->broken_ratiometric && !force_ratiometric) {
		/*
		 * Apparently the PM8058 has some kind of bug which is
		 * reflected in the vendor tree drivers/misc/pmix8058-xoadc.c
		 * which just hardcodes the RSV selector to SEL1 (0x20) for
		 * most cases and SEL0 (0x10) for the MUXOFF channel only.
		 * If we force ratiometric (currently only done when attempting
		 * to do ratiometric calibration) this doesn't seem to work
		 * very well and I suspect ratiometric conversion is simply
		 * broken or not supported on the PM8058.
		 *
		 * Maybe IO_SEL2 doesn't exist on PM8058 and bits 4 & 5 select
		 * the mode alone.
		 *
		 * Some PM8058 register documentation would be nice to get
		 * this right.
		 */
		if (ch->hwchan->amux_channel == PM8XXX_CHANNEL_MUXOFF)
			rsvval = ADC_ARB_USRP_RSV_IP_SEL0;
		else
			rsvval = ADC_ARB_USRP_RSV_IP_SEL1;
	} else {
		if (rsv == 0xff)
			rsvval = (ch->amux_ip_rsv << ADC_RSV_IP_SEL_SHIFT) |
				ADC_ARB_USRP_RSV_TRM;
		else
			rsvval = (rsv << ADC_RSV_IP_SEL_SHIFT) |
				ADC_ARB_USRP_RSV_TRM;
	}

	ret = FUNC5(adc->map,
				 ADC_ARB_USRP_RSV,
				 ~rsvmask,
				 rsvval);
	if (ret)
		goto unlock;

	ret = FUNC6(adc->map, ADC_ARB_USRP_ANA_PARAM,
			   ADC_ARB_USRP_ANA_PARAM_DIS);
	if (ret)
		goto unlock;

	/* Decimation factor */
	ret = FUNC6(adc->map, ADC_ARB_USRP_DIG_PARAM,
			   ADC_ARB_USRP_DIG_PARAM_SEL_SHIFT0 |
			   ADC_ARB_USRP_DIG_PARAM_SEL_SHIFT1 |
			   ch->decimation << ADC_DIG_PARAM_DEC_SHIFT);
	if (ret)
		goto unlock;

	ret = FUNC6(adc->map, ADC_ARB_USRP_ANA_PARAM,
			   ADC_ARB_USRP_ANA_PARAM_EN);
	if (ret)
		goto unlock;

	/* Enable the arbiter, the Qualcomm code does it twice like this */
	ret = FUNC6(adc->map, ADC_ARB_USRP_CNTRL,
			   ADC_ARB_USRP_CNTRL_EN_ARB);
	if (ret)
		goto unlock;
	ret = FUNC6(adc->map, ADC_ARB_USRP_CNTRL,
			   ADC_ARB_USRP_CNTRL_EN_ARB);
	if (ret)
		goto unlock;


	/* Fire a request! */
	FUNC7(&adc->complete);
	ret = FUNC6(adc->map, ADC_ARB_USRP_CNTRL,
			   ADC_ARB_USRP_CNTRL_EN_ARB |
			   ADC_ARB_USRP_CNTRL_REQ);
	if (ret)
		goto unlock;

	/* Next the interrupt occurs */
	ret = FUNC8(&adc->complete,
					  VADC_CONV_TIME_MAX_US);
	if (!ret) {
		FUNC1(adc->dev, "conversion timed out\n");
		ret = -ETIMEDOUT;
		goto unlock;
	}

	ret = FUNC4(adc->map, ADC_ARB_USRP_DATA0, &val);
	if (ret)
		goto unlock;
	lsb = val;
	ret = FUNC4(adc->map, ADC_ARB_USRP_DATA1, &val);
	if (ret)
		goto unlock;
	msb = val;
	*adc_code = (msb << 8) | lsb;

	/* Turn off the ADC by setting the arbiter to 0 twice */
	ret = FUNC6(adc->map, ADC_ARB_USRP_CNTRL, 0);
	if (ret)
		goto unlock;
	ret = FUNC6(adc->map, ADC_ARB_USRP_CNTRL, 0);
	if (ret)
		goto unlock;

unlock:
	FUNC3(&adc->lock);
	return ret;
}