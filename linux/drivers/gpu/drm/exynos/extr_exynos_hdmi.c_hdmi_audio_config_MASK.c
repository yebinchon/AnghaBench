#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int* status; } ;
struct TYPE_5__ {int sample_width; TYPE_1__ iec; int /*<<< orphan*/  sample_rate; } ;
struct TYPE_6__ {TYPE_2__ params; } ;
struct hdmi_context {TYPE_3__ audio; } ;

/* Variables and functions */
 int HDMI_I2S_AUD_I2S ; 
 int HDMI_I2S_BASIC_FORMAT ; 
 int HDMI_I2S_CH0_EN ; 
 int HDMI_I2S_CH1_EN ; 
 int HDMI_I2S_CH2_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HDMI_I2S_CH_STATUS_RELOAD ; 
 int /*<<< orphan*/  HDMI_I2S_CH_ST_CON ; 
 int HDMI_I2S_CH_ST_MAXNUM ; 
 int /*<<< orphan*/  HDMI_I2S_CLK_CON ; 
 int HDMI_I2S_CLK_DIS ; 
 int HDMI_I2S_CLK_EN ; 
 int /*<<< orphan*/  HDMI_I2S_CON_1 ; 
 int /*<<< orphan*/  HDMI_I2S_CON_2 ; 
 int HDMI_I2S_CUV_I2S_ENABLE ; 
 int HDMI_I2S_CUV_RL_EN ; 
 int /*<<< orphan*/  HDMI_I2S_DSD_CON ; 
 int HDMI_I2S_IN_DISABLE ; 
 int HDMI_I2S_L_CH_LOW_POL ; 
 int HDMI_I2S_MSB_FIRST_MODE ; 
 int /*<<< orphan*/  HDMI_I2S_MUX_CH ; 
 int /*<<< orphan*/  HDMI_I2S_MUX_CON ; 
 int /*<<< orphan*/  HDMI_I2S_MUX_CUV ; 
 int HDMI_I2S_MUX_ENABLE ; 
 int /*<<< orphan*/  HDMI_I2S_PIN_SEL_0 ; 
 int /*<<< orphan*/  HDMI_I2S_PIN_SEL_1 ; 
 int /*<<< orphan*/  HDMI_I2S_PIN_SEL_2 ; 
 int /*<<< orphan*/  HDMI_I2S_PIN_SEL_3 ; 
 int HDMI_I2S_SCLK_FALLING_EDGE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct hdmi_context*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct hdmi_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hdmi_context*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(struct hdmi_context *hdata)
{
	u32 bit_ch = 1;
	u32 data_num, val;
	int i;

	switch (hdata->audio.params.sample_width) {
	case 20:
		data_num = 2;
		break;
	case 24:
		data_num = 3;
		break;
	default:
		data_num = 1;
		bit_ch = 0;
		break;
	}

	FUNC10(hdata, hdata->audio.params.sample_rate);

	FUNC12(hdata, HDMI_I2S_MUX_CON, HDMI_I2S_IN_DISABLE
				| HDMI_I2S_AUD_I2S | HDMI_I2S_CUV_I2S_ENABLE
				| HDMI_I2S_MUX_ENABLE);

	FUNC12(hdata, HDMI_I2S_MUX_CH, HDMI_I2S_CH0_EN
			| HDMI_I2S_CH1_EN | HDMI_I2S_CH2_EN);

	FUNC12(hdata, HDMI_I2S_MUX_CUV, HDMI_I2S_CUV_RL_EN);
	FUNC12(hdata, HDMI_I2S_CLK_CON, HDMI_I2S_CLK_DIS);
	FUNC12(hdata, HDMI_I2S_CLK_CON, HDMI_I2S_CLK_EN);

	val = FUNC11(hdata, HDMI_I2S_DSD_CON) | 0x01;
	FUNC12(hdata, HDMI_I2S_DSD_CON, val);

	/* Configuration I2S input ports. Configure I2S_PIN_SEL_0~4 */
	FUNC12(hdata, HDMI_I2S_PIN_SEL_0, FUNC3(5)
			| FUNC2(6));

	FUNC12(hdata, HDMI_I2S_PIN_SEL_1, FUNC5(3)
			| FUNC4(4));

	FUNC12(hdata, HDMI_I2S_PIN_SEL_2, FUNC7(1)
			| FUNC6(2));

	FUNC12(hdata, HDMI_I2S_PIN_SEL_3, FUNC1(0));

	/* I2S_CON_1 & 2 */
	FUNC12(hdata, HDMI_I2S_CON_1, HDMI_I2S_SCLK_FALLING_EDGE
			| HDMI_I2S_L_CH_LOW_POL);
	FUNC12(hdata, HDMI_I2S_CON_2, HDMI_I2S_MSB_FIRST_MODE
			| FUNC8(bit_ch)
			| FUNC9(data_num)
			| HDMI_I2S_BASIC_FORMAT);

	/* Configuration of the audio channel status registers */
	for (i = 0; i < HDMI_I2S_CH_ST_MAXNUM; i++)
		FUNC12(hdata, FUNC0(i),
				hdata->audio.params.iec.status[i]);

	FUNC12(hdata, HDMI_I2S_CH_ST_CON, HDMI_I2S_CH_STATUS_RELOAD);
}