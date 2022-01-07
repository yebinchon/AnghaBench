
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_mic {int dev; int enabled; } ;
struct device {int dummy; } ;


 struct exynos_mic* dev_get_drvdata (struct device*) ;
 int mic_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static void exynos_mic_unbind(struct device *dev, struct device *master,
         void *data)
{
 struct exynos_mic *mic = dev_get_drvdata(dev);

 mutex_lock(&mic_mutex);
 if (!mic->enabled)
  goto already_disabled;

 pm_runtime_put(mic->dev);

already_disabled:
 mutex_unlock(&mic_mutex);
}
