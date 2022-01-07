
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mdp5_kms {int cfg; } ;
struct TYPE_8__ {int caps; int base; int count; } ;
struct TYPE_7__ {int caps; int base; int count; } ;
struct TYPE_6__ {int caps; int base; int count; } ;
struct TYPE_5__ {int caps; int base; int count; } ;
struct mdp5_cfg_hw {TYPE_4__ pipe_cursor; TYPE_3__ pipe_dma; TYPE_2__ pipe_vig; TYPE_1__ pipe_rgb; } ;
typedef enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;
 int construct_pipes (struct mdp5_kms*,int ,int const*,int ,int ) ;
 struct mdp5_cfg_hw* mdp5_cfg_get_hw_config (int ) ;

__attribute__((used)) static int hwpipe_init(struct mdp5_kms *mdp5_kms)
{
 static const enum mdp5_pipe rgb_planes[] = {
   135, 134, 133, 132,
 };
 static const enum mdp5_pipe vig_planes[] = {
   131, 130, 129, 128,
 };
 static const enum mdp5_pipe dma_planes[] = {
   137, 136,
 };
 static const enum mdp5_pipe cursor_planes[] = {
   139, 138,
 };
 const struct mdp5_cfg_hw *hw_cfg;
 int ret;

 hw_cfg = mdp5_cfg_get_hw_config(mdp5_kms->cfg);


 ret = construct_pipes(mdp5_kms, hw_cfg->pipe_rgb.count, rgb_planes,
   hw_cfg->pipe_rgb.base, hw_cfg->pipe_rgb.caps);
 if (ret)
  return ret;


 ret = construct_pipes(mdp5_kms, hw_cfg->pipe_vig.count, vig_planes,
   hw_cfg->pipe_vig.base, hw_cfg->pipe_vig.caps);
 if (ret)
  return ret;


 ret = construct_pipes(mdp5_kms, hw_cfg->pipe_dma.count, dma_planes,
   hw_cfg->pipe_dma.base, hw_cfg->pipe_dma.caps);
 if (ret)
  return ret;


 ret = construct_pipes(mdp5_kms, hw_cfg->pipe_cursor.count,
   cursor_planes, hw_cfg->pipe_cursor.base,
   hw_cfg->pipe_cursor.caps);
 if (ret)
  return ret;

 return 0;
}
