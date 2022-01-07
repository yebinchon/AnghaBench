
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_aux {int dummy; } ;
typedef int ssize_t ;


 int DP_AUX_NATIVE_READ ;
 unsigned int DP_DPCD_REV ;
 int drm_dp_dpcd_access (struct drm_dp_aux*,int ,unsigned int,void*,size_t) ;
 int drm_dp_dump_access (struct drm_dp_aux*,int ,unsigned int,void*,int) ;

ssize_t drm_dp_dpcd_read(struct drm_dp_aux *aux, unsigned int offset,
    void *buffer, size_t size)
{
 int ret;
 ret = drm_dp_dpcd_access(aux, DP_AUX_NATIVE_READ, DP_DPCD_REV, buffer,
     1);
 if (ret != 1)
  goto out;

 ret = drm_dp_dpcd_access(aux, DP_AUX_NATIVE_READ, offset, buffer,
     size);

out:
 drm_dp_dump_access(aux, DP_AUX_NATIVE_READ, offset, buffer, ret);
 return ret;
}
