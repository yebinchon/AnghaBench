
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_display_topology {int num_lm; int num_intf; scalar_t__ num_enc; } ;
struct drm_display_mode {scalar_t__ vdisplay; } ;
struct dpu_kms {int dummy; } ;
struct dpu_encoder_virt {scalar_t__* phys_encs; } ;


 int MAX_PHYS_ENCODERS_PER_VIRTUAL ;
 scalar_t__ MAX_VDISPLAY_SPLIT ;

__attribute__((used)) static struct msm_display_topology dpu_encoder_get_topology(
   struct dpu_encoder_virt *dpu_enc,
   struct dpu_kms *dpu_kms,
   struct drm_display_mode *mode)
{
 struct msm_display_topology topology;
 int i, intf_count = 0;

 for (i = 0; i < MAX_PHYS_ENCODERS_PER_VIRTUAL; i++)
  if (dpu_enc->phys_encs[i])
   intf_count++;


 topology.num_lm = (mode->vdisplay > MAX_VDISPLAY_SPLIT) ? 2 : 1;
 topology.num_enc = 0;
 topology.num_intf = intf_count;

 return topology;
}
