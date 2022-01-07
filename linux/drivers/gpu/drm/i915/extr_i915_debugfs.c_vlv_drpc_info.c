
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int private; } ;
struct drm_i915_private {int dummy; } ;


 int GEN6_RC_CONTROL ;
 int GEN6_RC_CTL_EI_MODE (int) ;
 int GEN7_RC_CTL_TO_MODE ;
 int I915_READ (int ) ;
 int VLV_GTLC_PW_MEDIA_STATUS_MASK ;
 int VLV_GTLC_PW_RENDER_STATUS_MASK ;
 int VLV_GTLC_PW_STATUS ;
 int VLV_GT_MEDIA_RC6 ;
 int VLV_GT_RENDER_RC6 ;
 int i915_forcewake_domains (struct seq_file*,int *) ;
 struct drm_i915_private* node_to_i915 (int ) ;
 int print_rc6_res (struct seq_file*,char*,int ) ;
 int seq_printf (struct seq_file*,char*,char*) ;
 char* yesno (int) ;

__attribute__((used)) static int vlv_drpc_info(struct seq_file *m)
{
 struct drm_i915_private *dev_priv = node_to_i915(m->private);
 u32 rcctl1, pw_status;

 pw_status = I915_READ(VLV_GTLC_PW_STATUS);
 rcctl1 = I915_READ(GEN6_RC_CONTROL);

 seq_printf(m, "RC6 Enabled: %s\n",
     yesno(rcctl1 & (GEN7_RC_CTL_TO_MODE |
     GEN6_RC_CTL_EI_MODE(1))));
 seq_printf(m, "Render Power Well: %s\n",
     (pw_status & VLV_GTLC_PW_RENDER_STATUS_MASK) ? "Up" : "Down");
 seq_printf(m, "Media Power Well: %s\n",
     (pw_status & VLV_GTLC_PW_MEDIA_STATUS_MASK) ? "Up" : "Down");

 print_rc6_res(m, "Render RC6 residency since boot:", VLV_GT_RENDER_RC6);
 print_rc6_res(m, "Media RC6 residency since boot:", VLV_GT_MEDIA_RC6);

 return i915_forcewake_domains(m, ((void*)0));
}
