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
typedef  int u32 ;
struct tda998x_audio_settings {scalar_t__ ena_ap; int sample_rate; int i2s_format; int cts_n; int* status; int /*<<< orphan*/  cea; TYPE_1__* route; } ;
struct tda998x_priv {struct tda998x_audio_settings audio; } ;
struct TYPE_2__ {int ena_aclk; int mux_ap; int aip_clksel; } ;

/* Variables and functions */
 int AIP_CNTRL_0_ACR_MAN ; 
 int AIP_CNTRL_0_LAYOUT ; 
 int AIP_CNTRL_0_RST_CTS ; 
 int /*<<< orphan*/  REG_ACR_CTS_0 ; 
 int /*<<< orphan*/  REG_AIP_CLKSEL ; 
 int /*<<< orphan*/  REG_AIP_CNTRL_0 ; 
 int /*<<< orphan*/  REG_AUDIO_DIV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_CTS_N ; 
 int /*<<< orphan*/  REG_ENA_ACLK ; 
 int /*<<< orphan*/  REG_ENA_AP ; 
 int /*<<< orphan*/  REG_I2S_FORMAT ; 
 int /*<<< orphan*/  REG_MUX_AP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct tda998x_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tda998x_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tda998x_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tda998x_priv*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tda998x_priv*,int) ; 
 int FUNC7 (struct tda998x_priv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tda998x_priv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct tda998x_priv *priv)
{
	const struct tda998x_audio_settings *settings = &priv->audio;
	u8 buf[6], adiv;
	u32 n;

	/* If audio is not configured, there is nothing to do. */
	if (settings->ena_ap == 0)
		return;

	adiv = FUNC7(priv, settings->sample_rate);

	/* Enable audio ports */
	FUNC4(priv, REG_ENA_AP, settings->ena_ap);
	FUNC4(priv, REG_ENA_ACLK, settings->route->ena_aclk);
	FUNC4(priv, REG_MUX_AP, settings->route->mux_ap);
	FUNC4(priv, REG_I2S_FORMAT, settings->i2s_format);
	FUNC4(priv, REG_AIP_CLKSEL, settings->route->aip_clksel);
	FUNC2(priv, REG_AIP_CNTRL_0, AIP_CNTRL_0_LAYOUT |
					AIP_CNTRL_0_ACR_MAN);	/* auto CTS */
	FUNC4(priv, REG_CTS_N, settings->cts_n);
	FUNC4(priv, REG_AUDIO_DIV, adiv);

	/*
	 * This is the approximate value of N, which happens to be
	 * the recommended values for non-coherent clocks.
	 */
	n = 128 * settings->sample_rate / 1000;

	/* Write the CTS and N values */
	buf[0] = 0x44;
	buf[1] = 0x42;
	buf[2] = 0x01;
	buf[3] = n;
	buf[4] = n >> 8;
	buf[5] = n >> 16;
	FUNC5(priv, REG_ACR_CTS_0, buf, 6);

	/* Reset CTS generator */
	FUNC3(priv, REG_AIP_CNTRL_0, AIP_CNTRL_0_RST_CTS);
	FUNC2(priv, REG_AIP_CNTRL_0, AIP_CNTRL_0_RST_CTS);

	/* Write the channel status
	 * The REG_CH_STAT_B-registers skip IEC958 AES2 byte, because
	 * there is a separate register for each I2S wire.
	 */
	buf[0] = settings->status[0];
	buf[1] = settings->status[1];
	buf[2] = settings->status[3];
	buf[3] = settings->status[4];
	FUNC5(priv, FUNC0(0), buf, 4);

	FUNC6(priv, true);
	FUNC1(20);
	FUNC6(priv, false);

	FUNC8(priv, &settings->cea);
}