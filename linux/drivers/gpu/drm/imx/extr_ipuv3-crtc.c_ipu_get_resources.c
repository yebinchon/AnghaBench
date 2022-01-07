
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipu_soc {int dummy; } ;
struct ipu_crtc {int di; int dc; TYPE_1__* dev; } ;
struct ipu_client_platformdata {int di; int dc; } ;
struct TYPE_2__ {int parent; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct ipu_soc* dev_get_drvdata (int ) ;
 int ipu_dc_get (struct ipu_soc*,int ) ;
 int ipu_di_get (struct ipu_soc*,int ) ;
 int ipu_put_resources (struct ipu_crtc*) ;

__attribute__((used)) static int ipu_get_resources(struct ipu_crtc *ipu_crtc,
  struct ipu_client_platformdata *pdata)
{
 struct ipu_soc *ipu = dev_get_drvdata(ipu_crtc->dev->parent);
 int ret;

 ipu_crtc->dc = ipu_dc_get(ipu, pdata->dc);
 if (IS_ERR(ipu_crtc->dc)) {
  ret = PTR_ERR(ipu_crtc->dc);
  goto err_out;
 }

 ipu_crtc->di = ipu_di_get(ipu, pdata->di);
 if (IS_ERR(ipu_crtc->di)) {
  ret = PTR_ERR(ipu_crtc->di);
  goto err_out;
 }

 return 0;
err_out:
 ipu_put_resources(ipu_crtc);

 return ret;
}
