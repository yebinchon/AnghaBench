
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_plane {int mutex; TYPE_2__* state; } ;
struct TYPE_8__ {struct drm_plane drm_plane; } ;
struct sti_gdp {scalar_t__ regs; TYPE_4__ plane; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_7__ {int id; } ;
struct drm_crtc {TYPE_3__ base; } ;
struct TYPE_6__ {struct drm_crtc* crtc; } ;
struct TYPE_5__ {scalar_t__ data; } ;


 int DBGFS_DUMP (int ) ;
 int GAM_GDP_AGC ;
 int GAM_GDP_CML ;
 int GAM_GDP_CTL ;
 scalar_t__ GAM_GDP_CTL_OFFSET ;
 int GAM_GDP_KEY1 ;
 int GAM_GDP_KEY2 ;
 int GAM_GDP_MST ;
 scalar_t__ GAM_GDP_MST_OFFSET ;
 int GAM_GDP_NVN ;
 scalar_t__ GAM_GDP_NVN_OFFSET ;
 int GAM_GDP_PML ;
 int GAM_GDP_PMP ;
 int GAM_GDP_PPT ;
 scalar_t__ GAM_GDP_PPT_OFFSET ;
 int GAM_GDP_SIZE ;
 scalar_t__ GAM_GDP_SIZE_OFFSET ;
 int GAM_GDP_VPO ;
 scalar_t__ GAM_GDP_VPO_OFFSET ;
 int GAM_GDP_VPS ;
 scalar_t__ GAM_GDP_VPS_OFFSET ;
 int drm_modeset_lock (int *,int *) ;
 int drm_modeset_unlock (int *) ;
 int gdp_dbg_ctl (struct seq_file*,int ) ;
 int gdp_dbg_mst (struct seq_file*,int ) ;
 int gdp_dbg_nvn (struct seq_file*,struct sti_gdp*,int ) ;
 int gdp_dbg_ppt (struct seq_file*,int ) ;
 int gdp_dbg_size (struct seq_file*,int ) ;
 int gdp_dbg_vpo (struct seq_file*,int ) ;
 int gdp_dbg_vps (struct seq_file*,int ) ;
 int readl (scalar_t__) ;
 int seq_printf (struct seq_file*,char*,int ,scalar_t__) ;
 int seq_puts (struct seq_file*,char*) ;
 scalar_t__ sti_mixer_to_str (int ) ;
 int sti_plane_to_str (TYPE_4__*) ;
 int to_sti_mixer (struct drm_crtc*) ;

__attribute__((used)) static int gdp_dbg_show(struct seq_file *s, void *data)
{
 struct drm_info_node *node = s->private;
 struct sti_gdp *gdp = (struct sti_gdp *)node->info_ent->data;
 struct drm_plane *drm_plane = &gdp->plane.drm_plane;
 struct drm_crtc *crtc;

 drm_modeset_lock(&drm_plane->mutex, ((void*)0));
 crtc = drm_plane->state->crtc;
 drm_modeset_unlock(&drm_plane->mutex);

 seq_printf(s, "%s: (vaddr = 0x%p)",
     sti_plane_to_str(&gdp->plane), gdp->regs);

 DBGFS_DUMP(GAM_GDP_CTL);
 gdp_dbg_ctl(s, readl(gdp->regs + GAM_GDP_CTL_OFFSET));
 DBGFS_DUMP(GAM_GDP_AGC);
 DBGFS_DUMP(GAM_GDP_VPO);
 gdp_dbg_vpo(s, readl(gdp->regs + GAM_GDP_VPO_OFFSET));
 DBGFS_DUMP(GAM_GDP_VPS);
 gdp_dbg_vps(s, readl(gdp->regs + GAM_GDP_VPS_OFFSET));
 DBGFS_DUMP(GAM_GDP_PML);
 DBGFS_DUMP(GAM_GDP_PMP);
 DBGFS_DUMP(GAM_GDP_SIZE);
 gdp_dbg_size(s, readl(gdp->regs + GAM_GDP_SIZE_OFFSET));
 DBGFS_DUMP(GAM_GDP_NVN);
 gdp_dbg_nvn(s, gdp, readl(gdp->regs + GAM_GDP_NVN_OFFSET));
 DBGFS_DUMP(GAM_GDP_KEY1);
 DBGFS_DUMP(GAM_GDP_KEY2);
 DBGFS_DUMP(GAM_GDP_PPT);
 gdp_dbg_ppt(s, readl(gdp->regs + GAM_GDP_PPT_OFFSET));
 DBGFS_DUMP(GAM_GDP_CML);
 DBGFS_DUMP(GAM_GDP_MST);
 gdp_dbg_mst(s, readl(gdp->regs + GAM_GDP_MST_OFFSET));

 seq_puts(s, "\n\n");
 if (!crtc)
  seq_puts(s, "  Not connected to any DRM CRTC\n");
 else
  seq_printf(s, "  Connected to DRM CRTC #%d (%s)\n",
      crtc->base.id, sti_mixer_to_str(to_sti_mixer(crtc)));

 return 0;
}
