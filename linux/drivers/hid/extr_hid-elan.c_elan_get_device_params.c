
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
struct elan_drvdata {unsigned char max_x; unsigned char max_y; void* res_y; void* res_x; } ;


 int ELAN_FEATURE_SIZE ;
 int ELAN_PARAM_MAX_X ;
 int ELAN_PARAM_MAX_Y ;
 int ELAN_PARAM_RES ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* elan_convert_res (unsigned char) ;
 int elan_get_device_param (struct hid_device*,unsigned char*,int ) ;
 struct elan_drvdata* hid_get_drvdata (struct hid_device*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int ,int ) ;

__attribute__((used)) static int elan_get_device_params(struct hid_device *hdev)
{
 struct elan_drvdata *drvdata = hid_get_drvdata(hdev);
 unsigned char *dmabuf;
 int ret;

 dmabuf = kmalloc(ELAN_FEATURE_SIZE, GFP_KERNEL);
 if (!dmabuf)
  return -ENOMEM;

 ret = elan_get_device_param(hdev, dmabuf, ELAN_PARAM_MAX_X);
 if (ret)
  goto err;

 drvdata->max_x = (dmabuf[4] << 8) | dmabuf[3];

 ret = elan_get_device_param(hdev, dmabuf, ELAN_PARAM_MAX_Y);
 if (ret)
  goto err;

 drvdata->max_y = (dmabuf[4] << 8) | dmabuf[3];

 ret = elan_get_device_param(hdev, dmabuf, ELAN_PARAM_RES);
 if (ret)
  goto err;

 drvdata->res_x = elan_convert_res(dmabuf[3]);
 drvdata->res_y = elan_convert_res(dmabuf[4]);

err:
 kfree(dmabuf);
 return ret;
}
