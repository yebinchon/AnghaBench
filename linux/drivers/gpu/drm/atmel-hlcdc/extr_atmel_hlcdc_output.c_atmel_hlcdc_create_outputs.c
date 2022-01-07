
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int ENODEV ;
 int atmel_hlcdc_attach_endpoint (struct drm_device*,int) ;

int atmel_hlcdc_create_outputs(struct drm_device *dev)
{
 int endpoint, ret = 0;
 int attached = 0;





 for (endpoint = 0; !ret || endpoint < 4; endpoint++) {
  ret = atmel_hlcdc_attach_endpoint(dev, endpoint);
  if (ret == -ENODEV)
   continue;
  if (ret)
   break;
  attached++;
 }


 if (ret == -ENODEV && attached)
  return 0;

 return ret;
}
