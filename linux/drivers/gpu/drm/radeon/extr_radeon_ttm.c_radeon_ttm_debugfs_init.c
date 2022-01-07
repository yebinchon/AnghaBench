
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* gtt; void* vram; } ;
struct radeon_device {scalar_t__ need_swiotlb; TYPE_2__ mman; TYPE_1__* ddev; } ;
struct drm_minor {struct dentry* debugfs_root; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {struct drm_minor* primary; } ;


 unsigned int ARRAY_SIZE (int ) ;
 int S_IFREG ;
 int S_IRUGO ;
 void* debugfs_create_file (char*,int,struct dentry*,struct radeon_device*,int *) ;
 int radeon_debugfs_add_files (struct radeon_device*,int ,unsigned int) ;
 int radeon_ttm_debugfs_list ;
 int radeon_ttm_gtt_fops ;
 int radeon_ttm_vram_fops ;
 scalar_t__ swiotlb_nr_tbl () ;

__attribute__((used)) static int radeon_ttm_debugfs_init(struct radeon_device *rdev)
{
 return 0;

}
