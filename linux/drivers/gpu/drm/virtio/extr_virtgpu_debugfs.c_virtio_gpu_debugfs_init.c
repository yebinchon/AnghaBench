
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {int debugfs_root; } ;


 int VIRTIO_GPU_DEBUGFS_ENTRIES ;
 int drm_debugfs_create_files (int ,int ,int ,struct drm_minor*) ;
 int virtio_gpu_debugfs_list ;

int
virtio_gpu_debugfs_init(struct drm_minor *minor)
{
 drm_debugfs_create_files(virtio_gpu_debugfs_list,
     VIRTIO_GPU_DEBUGFS_ENTRIES,
     minor->debugfs_root, minor);
 return 0;
}
