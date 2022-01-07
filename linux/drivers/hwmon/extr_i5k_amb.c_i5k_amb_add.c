
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRVNAME ;
 int ENODEV ;
 int ENOMEM ;
 int amb_pdev ;
 int platform_device_add (int ) ;
 int platform_device_alloc (int ,int ) ;
 int platform_device_put (int ) ;

__attribute__((used)) static int i5k_amb_add(void)
{
 int res = -ENODEV;


 amb_pdev = platform_device_alloc(DRVNAME, 0);
 if (!amb_pdev)
  return -ENOMEM;

 res = platform_device_add(amb_pdev);
 if (res)
  goto err;
 return 0;

err:
 platform_device_put(amb_pdev);
 return res;
}
