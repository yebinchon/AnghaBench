
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int dummy; } ;
struct radeon_device {struct radeon_ring* ring; } ;
struct drm_info_list {scalar_t__ data; } ;


 unsigned int ARRAY_SIZE (struct drm_info_list*) ;
 unsigned int radeon_debugfs_add_files (struct radeon_device*,struct drm_info_list*,int) ;
 struct drm_info_list* radeon_debugfs_ring_info_list ;

__attribute__((used)) static int radeon_debugfs_ring_init(struct radeon_device *rdev, struct radeon_ring *ring)
{
 return 0;
}
