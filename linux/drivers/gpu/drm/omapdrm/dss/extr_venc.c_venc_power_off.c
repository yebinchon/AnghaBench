
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_device {int vdda_dac_reg; int output; int dss; } ;


 int VENC_OUTPUT_CONTROL ;
 int dss_mgr_disable (int *) ;
 int dss_set_dac_pwrdn_bgz (int ,int ) ;
 int regulator_disable (int ) ;
 int venc_runtime_put (struct venc_device*) ;
 int venc_write_reg (struct venc_device*,int ,int ) ;

__attribute__((used)) static void venc_power_off(struct venc_device *venc)
{
 venc_write_reg(venc, VENC_OUTPUT_CONTROL, 0);
 dss_set_dac_pwrdn_bgz(venc->dss, 0);

 dss_mgr_disable(&venc->output);

 regulator_disable(venc->vdda_dac_reg);

 venc_runtime_put(venc);
}
