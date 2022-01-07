
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct drm_minor {struct dentry* debugfs_root; } ;
struct dentry {int d_inode; } ;
struct TYPE_10__ {struct dentry** debugfs_entries; } ;
struct TYPE_9__ {int gart_size; int mc_vram_size; } ;
struct amdgpu_device {scalar_t__ need_swiotlb; TYPE_3__ mman; TYPE_2__ gmc; TYPE_1__* ddev; } ;
struct TYPE_11__ {scalar_t__ domain; int fops; int name; } ;
struct TYPE_8__ {struct drm_minor* primary; } ;


 unsigned int ARRAY_SIZE (TYPE_4__*) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int S_IFREG ;
 int S_IRUGO ;
 scalar_t__ TTM_PL_TT ;
 scalar_t__ TTM_PL_VRAM ;
 int amdgpu_debugfs_add_files (struct amdgpu_device*,TYPE_4__*,unsigned int) ;
 TYPE_4__* amdgpu_ttm_debugfs_list ;
 struct dentry* debugfs_create_file (int ,int,struct dentry*,struct amdgpu_device*,int ) ;
 int i_size_write (int ,int ) ;
 scalar_t__ swiotlb_nr_tbl () ;
 TYPE_4__* ttm_debugfs_entries ;

__attribute__((used)) static int amdgpu_ttm_debugfs_init(struct amdgpu_device *adev)
{
 return 0;

}
