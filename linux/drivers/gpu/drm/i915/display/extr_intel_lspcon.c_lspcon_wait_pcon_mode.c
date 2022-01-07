
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_lspcon {int dummy; } ;


 int DRM_LSPCON_MODE_PCON ;
 int lspcon_wait_mode (struct intel_lspcon*,int ) ;

void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon)
{
 lspcon_wait_mode(lspcon, DRM_LSPCON_MODE_PCON);
}
