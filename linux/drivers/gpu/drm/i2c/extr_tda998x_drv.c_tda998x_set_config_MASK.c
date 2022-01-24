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
struct TYPE_4__ {int /*<<< orphan*/  i2s_format; int /*<<< orphan*/  ena_ap; int /*<<< orphan*/  status; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  cea; int /*<<< orphan*/ * route; } ;
struct tda998x_priv {int vip_cntrl_0; int vip_cntrl_1; int vip_cntrl_2; TYPE_2__ audio; } ;
struct TYPE_3__ {scalar_t__ format; int sample_width; int /*<<< orphan*/  config; int /*<<< orphan*/  status; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  cea; } ;
struct tda998x_encoder_params {TYPE_1__ audio_params; scalar_t__ mirr_f; int /*<<< orphan*/  swap_f; scalar_t__ mirr_e; int /*<<< orphan*/  swap_e; scalar_t__ mirr_d; int /*<<< orphan*/  swap_d; scalar_t__ mirr_c; int /*<<< orphan*/  swap_c; scalar_t__ mirr_b; int /*<<< orphan*/  swap_b; scalar_t__ mirr_a; int /*<<< orphan*/  swap_a; } ;

/* Variables and functions */
 scalar_t__ AFMT_SPDIF ; 
 scalar_t__ AFMT_UNUSED ; 
 int AUDIO_ROUTE_I2S ; 
 int /*<<< orphan*/  I2S_FORMAT_PHILIPS ; 
 int VIP_CNTRL_0_MIRR_A ; 
 int VIP_CNTRL_0_MIRR_B ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int VIP_CNTRL_1_MIRR_C ; 
 int VIP_CNTRL_1_MIRR_D ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int VIP_CNTRL_2_MIRR_E ; 
 int VIP_CNTRL_2_MIRR_F ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/ * tda998x_audio_route ; 
 int FUNC8 (struct tda998x_priv*,TYPE_2__*,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct tda998x_priv *priv,
			      const struct tda998x_encoder_params *p)
{
	priv->vip_cntrl_0 = FUNC0(p->swap_a) |
			    (p->mirr_a ? VIP_CNTRL_0_MIRR_A : 0) |
			    FUNC1(p->swap_b) |
			    (p->mirr_b ? VIP_CNTRL_0_MIRR_B : 0);
	priv->vip_cntrl_1 = FUNC2(p->swap_c) |
			    (p->mirr_c ? VIP_CNTRL_1_MIRR_C : 0) |
			    FUNC3(p->swap_d) |
			    (p->mirr_d ? VIP_CNTRL_1_MIRR_D : 0);
	priv->vip_cntrl_2 = FUNC4(p->swap_e) |
			    (p->mirr_e ? VIP_CNTRL_2_MIRR_E : 0) |
			    FUNC5(p->swap_f) |
			    (p->mirr_f ? VIP_CNTRL_2_MIRR_F : 0);

	if (p->audio_params.format != AFMT_UNUSED) {
		unsigned int ratio, route;
		bool spdif = p->audio_params.format == AFMT_SPDIF;

		route = AUDIO_ROUTE_I2S + spdif;

		priv->audio.route = &tda998x_audio_route[route];
		priv->audio.cea = p->audio_params.cea;
		priv->audio.sample_rate = p->audio_params.sample_rate;
		FUNC6(priv->audio.status, p->audio_params.status,
		       FUNC7(sizeof(priv->audio.status),
			   sizeof(p->audio_params.status)));
		priv->audio.ena_ap = p->audio_params.config;
		priv->audio.i2s_format = I2S_FORMAT_PHILIPS;

		ratio = spdif ? 64 : p->audio_params.sample_width * 2;
		return FUNC8(priv, &priv->audio, ratio);
	}

	return 0;
}