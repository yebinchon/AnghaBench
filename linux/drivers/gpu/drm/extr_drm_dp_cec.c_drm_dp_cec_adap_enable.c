
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_dp_aux {int dummy; } ;
struct cec_adapter {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int DP_CEC_TUNNELING_CONTROL ;
 int DP_CEC_TUNNELING_ENABLE ;
 struct drm_dp_aux* cec_get_drvdata (struct cec_adapter*) ;
 scalar_t__ drm_dp_dpcd_writeb (struct drm_dp_aux*,int ,int ) ;

__attribute__((used)) static int drm_dp_cec_adap_enable(struct cec_adapter *adap, bool enable)
{
 struct drm_dp_aux *aux = cec_get_drvdata(adap);
 u32 val = enable ? DP_CEC_TUNNELING_ENABLE : 0;
 ssize_t err = 0;

 err = drm_dp_dpcd_writeb(aux, DP_CEC_TUNNELING_CONTROL, val);
 return (enable && err < 0) ? err : 0;
}
