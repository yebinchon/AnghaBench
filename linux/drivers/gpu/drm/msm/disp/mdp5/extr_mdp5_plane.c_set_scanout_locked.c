
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_kms {int aspace; } ;
struct TYPE_2__ {struct msm_kms base; } ;
struct mdp5_kms {TYPE_1__ base; } ;
struct drm_framebuffer {int * pitches; } ;
typedef enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;


 int MDP5_PIPE_SRC_STRIDE_A_P0 (int ) ;
 int MDP5_PIPE_SRC_STRIDE_A_P1 (int ) ;
 int MDP5_PIPE_SRC_STRIDE_B_P2 (int ) ;
 int MDP5_PIPE_SRC_STRIDE_B_P3 (int ) ;
 int REG_MDP5_PIPE_SRC0_ADDR (int) ;
 int REG_MDP5_PIPE_SRC1_ADDR (int) ;
 int REG_MDP5_PIPE_SRC2_ADDR (int) ;
 int REG_MDP5_PIPE_SRC3_ADDR (int) ;
 int REG_MDP5_PIPE_SRC_STRIDE_A (int) ;
 int REG_MDP5_PIPE_SRC_STRIDE_B (int) ;
 int mdp5_write (struct mdp5_kms*,int ,int) ;
 int msm_framebuffer_iova (struct drm_framebuffer*,int ,int) ;

__attribute__((used)) static void set_scanout_locked(struct mdp5_kms *mdp5_kms,
          enum mdp5_pipe pipe,
          struct drm_framebuffer *fb)
{
 struct msm_kms *kms = &mdp5_kms->base.base;

 mdp5_write(mdp5_kms, REG_MDP5_PIPE_SRC_STRIDE_A(pipe),
   MDP5_PIPE_SRC_STRIDE_A_P0(fb->pitches[0]) |
   MDP5_PIPE_SRC_STRIDE_A_P1(fb->pitches[1]));

 mdp5_write(mdp5_kms, REG_MDP5_PIPE_SRC_STRIDE_B(pipe),
   MDP5_PIPE_SRC_STRIDE_B_P2(fb->pitches[2]) |
   MDP5_PIPE_SRC_STRIDE_B_P3(fb->pitches[3]));

 mdp5_write(mdp5_kms, REG_MDP5_PIPE_SRC0_ADDR(pipe),
   msm_framebuffer_iova(fb, kms->aspace, 0));
 mdp5_write(mdp5_kms, REG_MDP5_PIPE_SRC1_ADDR(pipe),
   msm_framebuffer_iova(fb, kms->aspace, 1));
 mdp5_write(mdp5_kms, REG_MDP5_PIPE_SRC2_ADDR(pipe),
   msm_framebuffer_iova(fb, kms->aspace, 2));
 mdp5_write(mdp5_kms, REG_MDP5_PIPE_SRC3_ADDR(pipe),
   msm_framebuffer_iova(fb, kms->aspace, 3));
}
