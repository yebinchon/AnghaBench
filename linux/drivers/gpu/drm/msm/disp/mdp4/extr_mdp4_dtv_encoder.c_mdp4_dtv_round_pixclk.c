
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_dtv_encoder {int mdp_clk; } ;
struct drm_encoder {int dummy; } ;


 long clk_round_rate (int ,unsigned long) ;
 struct mdp4_dtv_encoder* to_mdp4_dtv_encoder (struct drm_encoder*) ;

long mdp4_dtv_round_pixclk(struct drm_encoder *encoder, unsigned long rate)
{
 struct mdp4_dtv_encoder *mdp4_dtv_encoder = to_mdp4_dtv_encoder(encoder);
 return clk_round_rate(mdp4_dtv_encoder->mdp_clk, rate);
}
