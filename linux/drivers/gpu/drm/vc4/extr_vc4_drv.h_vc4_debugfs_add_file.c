
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;



__attribute__((used)) static inline void vc4_debugfs_add_file(struct drm_device *drm,
     const char *filename,
     int (*show)(struct seq_file*, void*),
     void *data)
{
}
