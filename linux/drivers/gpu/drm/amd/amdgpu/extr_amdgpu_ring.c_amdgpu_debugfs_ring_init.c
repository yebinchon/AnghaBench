
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_minor {struct dentry* debugfs_root; } ;
struct dentry {int d_inode; } ;
struct amdgpu_ring {char* name; struct dentry* ent; scalar_t__ ring_size; } ;
struct amdgpu_device {TYPE_1__* ddev; } ;
struct TYPE_2__ {struct drm_minor* primary; } ;


 int ENOMEM ;
 int S_IFREG ;
 int S_IRUGO ;
 int amdgpu_debugfs_ring_fops ;
 struct dentry* debugfs_create_file (char*,int,struct dentry*,struct amdgpu_ring*,int *) ;
 int i_size_write (int ,scalar_t__) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int amdgpu_debugfs_ring_init(struct amdgpu_device *adev,
        struct amdgpu_ring *ring)
{
 return 0;
}
