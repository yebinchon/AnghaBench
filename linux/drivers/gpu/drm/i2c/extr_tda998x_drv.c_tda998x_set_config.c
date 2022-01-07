
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int i2s_format; int ena_ap; int status; int sample_rate; int cea; int * route; } ;
struct tda998x_priv {int vip_cntrl_0; int vip_cntrl_1; int vip_cntrl_2; TYPE_2__ audio; } ;
struct TYPE_3__ {scalar_t__ format; int sample_width; int config; int status; int sample_rate; int cea; } ;
struct tda998x_encoder_params {TYPE_1__ audio_params; scalar_t__ mirr_f; int swap_f; scalar_t__ mirr_e; int swap_e; scalar_t__ mirr_d; int swap_d; scalar_t__ mirr_c; int swap_c; scalar_t__ mirr_b; int swap_b; scalar_t__ mirr_a; int swap_a; } ;


 scalar_t__ AFMT_SPDIF ;
 scalar_t__ AFMT_UNUSED ;
 int AUDIO_ROUTE_I2S ;
 int I2S_FORMAT_PHILIPS ;
 int VIP_CNTRL_0_MIRR_A ;
 int VIP_CNTRL_0_MIRR_B ;
 int VIP_CNTRL_0_SWAP_A (int ) ;
 int VIP_CNTRL_0_SWAP_B (int ) ;
 int VIP_CNTRL_1_MIRR_C ;
 int VIP_CNTRL_1_MIRR_D ;
 int VIP_CNTRL_1_SWAP_C (int ) ;
 int VIP_CNTRL_1_SWAP_D (int ) ;
 int VIP_CNTRL_2_MIRR_E ;
 int VIP_CNTRL_2_MIRR_F ;
 int VIP_CNTRL_2_SWAP_E (int ) ;
 int VIP_CNTRL_2_SWAP_F (int ) ;
 int memcpy (int ,int ,int ) ;
 int min (int,int) ;
 int * tda998x_audio_route ;
 int tda998x_derive_cts_n (struct tda998x_priv*,TYPE_2__*,unsigned int) ;

__attribute__((used)) static int tda998x_set_config(struct tda998x_priv *priv,
         const struct tda998x_encoder_params *p)
{
 priv->vip_cntrl_0 = VIP_CNTRL_0_SWAP_A(p->swap_a) |
       (p->mirr_a ? VIP_CNTRL_0_MIRR_A : 0) |
       VIP_CNTRL_0_SWAP_B(p->swap_b) |
       (p->mirr_b ? VIP_CNTRL_0_MIRR_B : 0);
 priv->vip_cntrl_1 = VIP_CNTRL_1_SWAP_C(p->swap_c) |
       (p->mirr_c ? VIP_CNTRL_1_MIRR_C : 0) |
       VIP_CNTRL_1_SWAP_D(p->swap_d) |
       (p->mirr_d ? VIP_CNTRL_1_MIRR_D : 0);
 priv->vip_cntrl_2 = VIP_CNTRL_2_SWAP_E(p->swap_e) |
       (p->mirr_e ? VIP_CNTRL_2_MIRR_E : 0) |
       VIP_CNTRL_2_SWAP_F(p->swap_f) |
       (p->mirr_f ? VIP_CNTRL_2_MIRR_F : 0);

 if (p->audio_params.format != AFMT_UNUSED) {
  unsigned int ratio, route;
  bool spdif = p->audio_params.format == AFMT_SPDIF;

  route = AUDIO_ROUTE_I2S + spdif;

  priv->audio.route = &tda998x_audio_route[route];
  priv->audio.cea = p->audio_params.cea;
  priv->audio.sample_rate = p->audio_params.sample_rate;
  memcpy(priv->audio.status, p->audio_params.status,
         min(sizeof(priv->audio.status),
      sizeof(p->audio_params.status)));
  priv->audio.ena_ap = p->audio_params.config;
  priv->audio.i2s_format = I2S_FORMAT_PHILIPS;

  ratio = spdif ? 64 : p->audio_params.sample_width * 2;
  return tda998x_derive_cts_n(priv, &priv->audio, ratio);
 }

 return 0;
}
