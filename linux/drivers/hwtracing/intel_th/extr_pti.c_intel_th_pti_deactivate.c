
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pti_device {scalar_t__ base; } ;
struct intel_th_device {int dev; } ;


 scalar_t__ REG_PTI_CTL ;
 struct pti_device* dev_get_drvdata (int *) ;
 int intel_th_trace_disable (struct intel_th_device*) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void intel_th_pti_deactivate(struct intel_th_device *thdev)
{
 struct pti_device *pti = dev_get_drvdata(&thdev->dev);

 intel_th_trace_disable(thdev);

 iowrite32(0, pti->base + REG_PTI_CTL);
}
