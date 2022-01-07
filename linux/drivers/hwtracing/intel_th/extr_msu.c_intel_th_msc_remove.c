
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc {int dummy; } ;
struct intel_th_device {int dev; } ;


 int WARN_ON_ONCE (int) ;
 struct msc* dev_get_drvdata (int *) ;
 int intel_th_msc_deactivate (struct intel_th_device*) ;
 int msc_buffer_free_unless_used (struct msc*) ;

__attribute__((used)) static void intel_th_msc_remove(struct intel_th_device *thdev)
{
 struct msc *msc = dev_get_drvdata(&thdev->dev);
 int ret;

 intel_th_msc_deactivate(thdev);






 ret = msc_buffer_free_unless_used(msc);
 WARN_ON_ONCE(ret);
}
