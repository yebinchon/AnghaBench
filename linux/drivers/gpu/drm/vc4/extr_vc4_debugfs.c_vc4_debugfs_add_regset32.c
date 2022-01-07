
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct debugfs_regset32 {int dummy; } ;


 int vc4_debugfs_add_file (struct drm_device*,char const*,int ,struct debugfs_regset32*) ;
 int vc4_debugfs_regset32 ;

void vc4_debugfs_add_regset32(struct drm_device *drm,
         const char *name,
         struct debugfs_regset32 *regset)
{
 vc4_debugfs_add_file(drm, name, vc4_debugfs_regset32, regset);
}
