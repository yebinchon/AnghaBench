
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_tvout {int debugfs_registered; } ;
struct drm_encoder {int dummy; } ;


 struct sti_tvout* to_sti_tvout (struct drm_encoder*) ;

__attribute__((used)) static void sti_tvout_early_unregister(struct drm_encoder *encoder)
{
 struct sti_tvout *tvout = to_sti_tvout(encoder);

 if (!tvout->debugfs_registered)
  return;

 tvout->debugfs_registered = 0;
}
