
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_aux {int dummy; } ;
typedef int ssize_t ;


 int DP_AUX_NATIVE_WRITE ;
 int drm_dp_dpcd_access (struct drm_dp_aux*,int ,unsigned int,void*,size_t) ;
 int drm_dp_dump_access (struct drm_dp_aux*,int ,unsigned int,void*,int) ;

ssize_t drm_dp_dpcd_write(struct drm_dp_aux *aux, unsigned int offset,
     void *buffer, size_t size)
{
 int ret;

 ret = drm_dp_dpcd_access(aux, DP_AUX_NATIVE_WRITE, offset, buffer,
     size);
 drm_dp_dump_access(aux, DP_AUX_NATIVE_WRITE, offset, buffer, ret);
 return ret;
}
