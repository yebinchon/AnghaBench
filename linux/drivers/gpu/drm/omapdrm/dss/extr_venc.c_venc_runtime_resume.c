
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_device {scalar_t__ tv_dac_clk; } ;
struct device {int dummy; } ;


 int clk_prepare_enable (scalar_t__) ;
 struct venc_device* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int venc_runtime_resume(struct device *dev)
{
 struct venc_device *venc = dev_get_drvdata(dev);

 if (venc->tv_dac_clk)
  clk_prepare_enable(venc->tv_dac_clk);

 return 0;
}
