
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_dpcd_ident {int hw_rev; int sw_minor_rev; int sw_major_rev; int device_id; int oui; } ;
struct drm_dp_desc {int quirks; struct drm_dp_dpcd_ident ident; } ;
struct drm_dp_aux {int dummy; } ;


 unsigned int DP_BRANCH_OUI ;
 unsigned int DP_SINK_OUI ;
 int DRM_DEBUG_KMS (char*,char*,int,int ,int,int ,int,int,int ,int ,int ) ;
 int drm_dp_dpcd_read (struct drm_dp_aux*,unsigned int,struct drm_dp_dpcd_ident*,int) ;
 int drm_dp_get_quirks (struct drm_dp_dpcd_ident*,int) ;
 int strnlen (int ,int) ;

int drm_dp_read_desc(struct drm_dp_aux *aux, struct drm_dp_desc *desc,
       bool is_branch)
{
 struct drm_dp_dpcd_ident *ident = &desc->ident;
 unsigned int offset = is_branch ? DP_BRANCH_OUI : DP_SINK_OUI;
 int ret, dev_id_len;

 ret = drm_dp_dpcd_read(aux, offset, ident, sizeof(*ident));
 if (ret < 0)
  return ret;

 desc->quirks = drm_dp_get_quirks(ident, is_branch);

 dev_id_len = strnlen(ident->device_id, sizeof(ident->device_id));

 DRM_DEBUG_KMS("DP %s: OUI %*phD dev-ID %*pE HW-rev %d.%d SW-rev %d.%d quirks 0x%04x\n",
        is_branch ? "branch" : "sink",
        (int)sizeof(ident->oui), ident->oui,
        dev_id_len, ident->device_id,
        ident->hw_rev >> 4, ident->hw_rev & 0xf,
        ident->sw_major_rev, ident->sw_minor_rev,
        desc->quirks);

 return 0;
}
