
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct dpu_encoder_virt {int debugfs_root; } ;


 int debugfs_remove_recursive (int ) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;

__attribute__((used)) static void dpu_encoder_early_unregister(struct drm_encoder *encoder)
{
 struct dpu_encoder_virt *dpu_enc = to_dpu_encoder_virt(encoder);

 debugfs_remove_recursive(dpu_enc->debugfs_root);
}
