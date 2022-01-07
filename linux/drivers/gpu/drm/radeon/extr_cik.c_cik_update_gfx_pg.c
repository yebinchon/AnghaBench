
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int cik_enable_gfx_cgpg (struct radeon_device*,int) ;
 int cik_enable_gfx_dynamic_mgpg (struct radeon_device*,int) ;
 int cik_enable_gfx_static_mgpg (struct radeon_device*,int) ;

__attribute__((used)) static void cik_update_gfx_pg(struct radeon_device *rdev, bool enable)
{
 cik_enable_gfx_cgpg(rdev, enable);
 cik_enable_gfx_static_mgpg(rdev, enable);
 cik_enable_gfx_dynamic_mgpg(rdev, enable);
}
