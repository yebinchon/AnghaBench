
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxuio_data {int value; void* uio; } ;
struct drxuio_cfg {int mode; void* uio; } ;
struct drx_demod_instance {int dummy; } ;


 void* DRX_UIO1 ;
 int DRX_UIO_MODE_READWRITE ;
 int ctrl_set_uio_cfg (struct drx_demod_instance*,struct drxuio_cfg*) ;
 int ctrl_uio_write (struct drx_demod_instance*,struct drxuio_data*) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int drxj_set_lna_state(struct drx_demod_instance *demod, bool state)
{
 struct drxuio_cfg uio_cfg;
 struct drxuio_data uio_data;
 int result;

 uio_cfg.uio = DRX_UIO1;
 uio_cfg.mode = DRX_UIO_MODE_READWRITE;

 result = ctrl_set_uio_cfg(demod, &uio_cfg);
 if (result) {
  pr_err("Failed to setup LNA GPIO!\n");
  return result;
 }

 uio_data.uio = DRX_UIO1;
 uio_data.value = state;
 result = ctrl_uio_write(demod, &uio_data);
 if (result != 0) {
  pr_err("Failed to %sable LNA!\n",
         state ? "en" : "dis");
  return result;
 }
 return 0;
}
