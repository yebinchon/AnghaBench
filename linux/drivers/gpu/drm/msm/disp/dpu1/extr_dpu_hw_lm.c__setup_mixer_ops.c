
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_mdss_cfg {int hwversion; } ;
struct dpu_hw_lm_ops {int setup_border_color; int setup_alpha_out; int setup_blend_config; int setup_mixer_out; } ;


 scalar_t__ IS_SDM670_TARGET (int ) ;
 scalar_t__ IS_SDM845_TARGET (int ) ;
 int dpu_hw_lm_setup_blend_config ;
 int dpu_hw_lm_setup_blend_config_sdm845 ;
 int dpu_hw_lm_setup_border_color ;
 int dpu_hw_lm_setup_color3 ;
 int dpu_hw_lm_setup_out ;

__attribute__((used)) static void _setup_mixer_ops(struct dpu_mdss_cfg *m,
  struct dpu_hw_lm_ops *ops,
  unsigned long features)
{
 ops->setup_mixer_out = dpu_hw_lm_setup_out;
 if (IS_SDM845_TARGET(m->hwversion) || IS_SDM670_TARGET(m->hwversion))
  ops->setup_blend_config = dpu_hw_lm_setup_blend_config_sdm845;
 else
  ops->setup_blend_config = dpu_hw_lm_setup_blend_config;
 ops->setup_alpha_out = dpu_hw_lm_setup_color3;
 ops->setup_border_color = dpu_hw_lm_setup_border_color;
}
