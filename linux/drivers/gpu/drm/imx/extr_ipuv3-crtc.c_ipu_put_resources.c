
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_crtc {int di; int dc; } ;


 int IS_ERR_OR_NULL (int ) ;
 int ipu_dc_put (int ) ;
 int ipu_di_put (int ) ;

__attribute__((used)) static void ipu_put_resources(struct ipu_crtc *ipu_crtc)
{
 if (!IS_ERR_OR_NULL(ipu_crtc->dc))
  ipu_dc_put(ipu_crtc->dc);
 if (!IS_ERR_OR_NULL(ipu_crtc->di))
  ipu_di_put(ipu_crtc->di);
}
