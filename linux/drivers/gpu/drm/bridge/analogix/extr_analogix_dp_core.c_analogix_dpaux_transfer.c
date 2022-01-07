
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_aux_msg {int dummy; } ;
struct drm_dp_aux {int dummy; } ;
struct analogix_dp_device {int dummy; } ;
typedef int ssize_t ;


 int analogix_dp_transfer (struct analogix_dp_device*,struct drm_dp_aux_msg*) ;
 struct analogix_dp_device* to_dp (struct drm_dp_aux*) ;

__attribute__((used)) static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
           struct drm_dp_aux_msg *msg)
{
 struct analogix_dp_device *dp = to_dp(aux);

 return analogix_dp_transfer(dp, msg);
}
