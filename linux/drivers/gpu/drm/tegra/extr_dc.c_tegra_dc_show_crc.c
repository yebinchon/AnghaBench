
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int mutex; TYPE_2__* state; } ;
struct tegra_dc {TYPE_3__ base; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_5__ {int active; } ;
struct TYPE_4__ {struct tegra_dc* data; } ;


 int DC_COM_CRC_CHECKSUM ;
 int DC_COM_CRC_CONTROL ;
 int DC_COM_CRC_CONTROL_ACTIVE_DATA ;
 int DC_COM_CRC_CONTROL_ENABLE ;
 int EBUSY ;
 int drm_crtc_wait_one_vblank (TYPE_3__*) ;
 int drm_modeset_lock (int *,int *) ;
 int drm_modeset_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,int) ;
 int tegra_dc_commit (struct tegra_dc*) ;
 int tegra_dc_readl (struct tegra_dc*,int ) ;
 int tegra_dc_writel (struct tegra_dc*,int,int ) ;

__attribute__((used)) static int tegra_dc_show_crc(struct seq_file *s, void *data)
{
 struct drm_info_node *node = s->private;
 struct tegra_dc *dc = node->info_ent->data;
 int err = 0;
 u32 value;

 drm_modeset_lock(&dc->base.mutex, ((void*)0));

 if (!dc->base.state->active) {
  err = -EBUSY;
  goto unlock;
 }

 value = DC_COM_CRC_CONTROL_ACTIVE_DATA | DC_COM_CRC_CONTROL_ENABLE;
 tegra_dc_writel(dc, value, DC_COM_CRC_CONTROL);
 tegra_dc_commit(dc);

 drm_crtc_wait_one_vblank(&dc->base);
 drm_crtc_wait_one_vblank(&dc->base);

 value = tegra_dc_readl(dc, DC_COM_CRC_CHECKSUM);
 seq_printf(s, "%08x\n", value);

 tegra_dc_writel(dc, 0, DC_COM_CRC_CONTROL);

unlock:
 drm_modeset_unlock(&dc->base.mutex);
 return err;
}
