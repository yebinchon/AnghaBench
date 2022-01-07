
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {int dummy; } ;
struct dentry {int dummy; } ;



__attribute__((used)) static inline int drm_debugfs_init(struct drm_minor *minor, int minor_id,
       struct dentry *root)
{
 return 0;
}
