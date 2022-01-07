
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venc_device {scalar_t__ type; int invert_polarity; int dss; int vdda_dac_reg; int output; int config; } ;


 scalar_t__ OMAP_DSS_VENC_TYPE_COMPOSITE ;
 int VENC_OUTPUT_CONTROL ;
 int dss_mgr_enable (int *) ;
 int dss_set_dac_pwrdn_bgz (int ,int) ;
 int dss_set_venc_output (int ,scalar_t__) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int venc_reset (struct venc_device*) ;
 int venc_runtime_get (struct venc_device*) ;
 int venc_runtime_put (struct venc_device*) ;
 int venc_write_config (struct venc_device*,int ) ;
 int venc_write_reg (struct venc_device*,int ,int) ;

__attribute__((used)) static int venc_power_on(struct venc_device *venc)
{
 u32 l;
 int r;

 r = venc_runtime_get(venc);
 if (r)
  goto err0;

 venc_reset(venc);
 venc_write_config(venc, venc->config);

 dss_set_venc_output(venc->dss, venc->type);
 dss_set_dac_pwrdn_bgz(venc->dss, 1);

 l = 0;

 if (venc->type == OMAP_DSS_VENC_TYPE_COMPOSITE)
  l |= 1 << 1;
 else
  l |= (1 << 0) | (1 << 2);

 if (venc->invert_polarity == 0)
  l |= 1 << 3;

 venc_write_reg(venc, VENC_OUTPUT_CONTROL, l);

 r = regulator_enable(venc->vdda_dac_reg);
 if (r)
  goto err1;

 r = dss_mgr_enable(&venc->output);
 if (r)
  goto err2;

 return 0;

err2:
 regulator_disable(venc->vdda_dac_reg);
err1:
 venc_write_reg(venc, VENC_OUTPUT_CONTROL, 0);
 dss_set_dac_pwrdn_bgz(venc->dss, 0);

 venc_runtime_put(venc);
err0:
 return r;
}
