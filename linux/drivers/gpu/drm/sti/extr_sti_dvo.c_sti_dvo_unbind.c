
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_dvo {int bridge; } ;
struct device {int dummy; } ;


 struct sti_dvo* dev_get_drvdata (struct device*) ;
 int drm_bridge_remove (int ) ;

__attribute__((used)) static void sti_dvo_unbind(struct device *dev,
      struct device *master, void *data)
{
 struct sti_dvo *dvo = dev_get_drvdata(dev);

 drm_bridge_remove(dvo->bridge);
}
