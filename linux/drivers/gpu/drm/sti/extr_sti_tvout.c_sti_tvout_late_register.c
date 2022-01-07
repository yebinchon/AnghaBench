
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_tvout {int debugfs_registered; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct TYPE_2__ {int primary; } ;


 struct sti_tvout* to_sti_tvout (struct drm_encoder*) ;
 int tvout_debugfs_init (struct sti_tvout*,int ) ;

__attribute__((used)) static int sti_tvout_late_register(struct drm_encoder *encoder)
{
 struct sti_tvout *tvout = to_sti_tvout(encoder);
 int ret;

 if (tvout->debugfs_registered)
  return 0;

 ret = tvout_debugfs_init(tvout, encoder->dev->primary);
 if (ret)
  return ret;

 tvout->debugfs_registered = 1;
 return 0;
}
