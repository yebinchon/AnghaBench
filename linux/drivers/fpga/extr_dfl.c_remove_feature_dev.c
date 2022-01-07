
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int id; } ;
struct device {int dummy; } ;
typedef enum dfl_id_type { ____Placeholder_dfl_id_type } dfl_id_type ;


 int dfl_id_free (int,int) ;
 int feature_dev_id_type (struct platform_device*) ;
 int platform_device_unregister (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int remove_feature_dev(struct device *dev, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 enum dfl_id_type type = feature_dev_id_type(pdev);
 int id = pdev->id;

 platform_device_unregister(pdev);

 dfl_id_free(type, id);

 return 0;
}
