
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_lcdc_encoder {int lcdc_clk; } ;
struct drm_encoder {int dummy; } ;


 long clk_round_rate (int ,unsigned long) ;
 struct mdp4_lcdc_encoder* to_mdp4_lcdc_encoder (struct drm_encoder*) ;

long mdp4_lcdc_round_pixclk(struct drm_encoder *encoder, unsigned long rate)
{
 struct mdp4_lcdc_encoder *mdp4_lcdc_encoder =
   to_mdp4_lcdc_encoder(encoder);
 return clk_round_rate(mdp4_lcdc_encoder->lcdc_clk, rate);
}
