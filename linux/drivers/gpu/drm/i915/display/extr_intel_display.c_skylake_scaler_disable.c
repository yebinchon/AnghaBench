
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int num_scalers; } ;


 int skl_detach_scaler (struct intel_crtc*,int) ;

__attribute__((used)) static void skylake_scaler_disable(struct intel_crtc *crtc)
{
 int i;

 for (i = 0; i < crtc->num_scalers; i++)
  skl_detach_scaler(crtc, i);
}
