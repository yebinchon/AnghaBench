
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_drm {scalar_t__ pitch_align; } ;
struct tegra_dc {int syncpt; struct drm_plane* group; int irq; int dev; TYPE_1__* soc; int base; } ;
struct host1x_client {int dev; int parent; } ;
struct drm_plane {int dummy; } ;
struct drm_device {struct tegra_drm* dev_private; } ;
struct TYPE_2__ {scalar_t__ pitch_align; scalar_t__ supports_cursor; scalar_t__ wgrps; } ;


 int ENODEV ;
 unsigned long HOST1X_SYNCPT_CLIENT_MANAGED ;
 scalar_t__ IS_ERR (struct drm_plane*) ;
 int IS_ERR_OR_NULL (struct drm_plane*) ;
 int PTR_ERR (struct drm_plane*) ;
 int dev_err (int ,char*,int,...) ;
 struct drm_device* dev_get_drvdata (int ) ;
 int dev_name (int ) ;
 int dev_warn (int ,char*) ;
 int devm_request_irq (int ,int ,int ,int ,int ,struct tegra_dc*) ;
 int drm_crtc_helper_add (int *,int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,int *,struct drm_plane*,struct drm_plane*,int *,int *) ;
 int drm_plane_cleanup (struct drm_plane*) ;
 struct drm_plane* host1x_client_iommu_attach (struct host1x_client*,int) ;
 int host1x_client_iommu_detach (struct host1x_client*,struct drm_plane*) ;
 struct tegra_dc* host1x_client_to_dc (struct host1x_client*) ;
 int host1x_syncpt_free (int ) ;
 int host1x_syncpt_request (struct host1x_client*,unsigned long) ;
 int tegra_crtc_funcs ;
 int tegra_crtc_helper_funcs ;
 struct drm_plane* tegra_dc_add_planes (struct drm_device*,struct tegra_dc*) ;
 struct drm_plane* tegra_dc_add_shared_planes (struct drm_device*,struct tegra_dc*) ;
 struct drm_plane* tegra_dc_cursor_plane_create (struct drm_device*,struct tegra_dc*) ;
 int tegra_dc_has_window_groups (struct tegra_dc*) ;
 int tegra_dc_irq ;
 struct drm_plane* tegra_dc_overlay_plane_create (struct drm_device*,struct tegra_dc*,int,int) ;
 int tegra_dc_rgb_init (struct drm_device*,struct tegra_dc*) ;

__attribute__((used)) static int tegra_dc_init(struct host1x_client *client)
{
 struct drm_device *drm = dev_get_drvdata(client->parent);
 unsigned long flags = HOST1X_SYNCPT_CLIENT_MANAGED;
 struct tegra_dc *dc = host1x_client_to_dc(client);
 struct tegra_drm *tegra = drm->dev_private;
 struct drm_plane *primary = ((void*)0);
 struct drm_plane *cursor = ((void*)0);
 int err;






 if (!tegra_dc_has_window_groups(dc))
  return 0;

 dc->syncpt = host1x_syncpt_request(client, flags);
 if (!dc->syncpt)
  dev_warn(dc->dev, "failed to allocate syncpoint\n");

 dc->group = host1x_client_iommu_attach(client, 1);
 if (IS_ERR(dc->group)) {
  err = PTR_ERR(dc->group);
  dev_err(client->dev, "failed to attach to domain: %d\n", err);
  return err;
 }

 if (dc->soc->wgrps)
  primary = tegra_dc_add_shared_planes(drm, dc);
 else
  primary = tegra_dc_add_planes(drm, dc);

 if (IS_ERR(primary)) {
  err = PTR_ERR(primary);
  goto cleanup;
 }

 if (dc->soc->supports_cursor) {
  cursor = tegra_dc_cursor_plane_create(drm, dc);
  if (IS_ERR(cursor)) {
   err = PTR_ERR(cursor);
   goto cleanup;
  }
 } else {

  cursor = tegra_dc_overlay_plane_create(drm, dc, 2, 1);
  if (IS_ERR(cursor)) {
   err = PTR_ERR(cursor);
   goto cleanup;
  }
 }

 err = drm_crtc_init_with_planes(drm, &dc->base, primary, cursor,
     &tegra_crtc_funcs, ((void*)0));
 if (err < 0)
  goto cleanup;

 drm_crtc_helper_add(&dc->base, &tegra_crtc_helper_funcs);





 if (dc->soc->pitch_align > tegra->pitch_align)
  tegra->pitch_align = dc->soc->pitch_align;

 err = tegra_dc_rgb_init(drm, dc);
 if (err < 0 && err != -ENODEV) {
  dev_err(dc->dev, "failed to initialize RGB output: %d\n", err);
  goto cleanup;
 }

 err = devm_request_irq(dc->dev, dc->irq, tegra_dc_irq, 0,
          dev_name(dc->dev), dc);
 if (err < 0) {
  dev_err(dc->dev, "failed to request IRQ#%u: %d\n", dc->irq,
   err);
  goto cleanup;
 }

 return 0;

cleanup:
 if (!IS_ERR_OR_NULL(cursor))
  drm_plane_cleanup(cursor);

 if (!IS_ERR(primary))
  drm_plane_cleanup(primary);

 host1x_client_iommu_detach(client, dc->group);
 host1x_syncpt_free(dc->syncpt);

 return err;
}
