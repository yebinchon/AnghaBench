
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_connector {int dummy; } ;
struct drm_connector {int dummy; } ;


 int EINVAL ;
 int radeon_dp_mst_check_status (struct radeon_connector*) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;

__attribute__((used)) static int radeon_dp_handle_hpd(struct drm_connector *connector)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 int ret;

 ret = radeon_dp_mst_check_status(radeon_connector);
 if (ret == -EINVAL)
  return 1;
 return 0;
}
