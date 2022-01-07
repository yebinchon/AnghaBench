
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int num_tracked_mmio; } ;
struct intel_gvt {TYPE_3__ mmio; int debugfs_root; TYPE_2__* dev_priv; } ;
struct drm_minor {int debugfs_root; } ;
struct TYPE_4__ {struct drm_minor* primary; } ;
struct TYPE_5__ {TYPE_1__ drm; } ;


 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_ulong (char*,int,int ,int *) ;

void intel_gvt_debugfs_init(struct intel_gvt *gvt)
{
 struct drm_minor *minor = gvt->dev_priv->drm.primary;

 gvt->debugfs_root = debugfs_create_dir("gvt", minor->debugfs_root);

 debugfs_create_ulong("num_tracked_mmio", 0444, gvt->debugfs_root,
        &gvt->mmio.num_tracked_mmio);
}
