
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct debugfs_regset32 {int dummy; } ;



__attribute__((used)) static inline void vc4_debugfs_add_regset32(struct drm_device *drm,
         const char *filename,
         struct debugfs_regset32 *regset)
{
}
