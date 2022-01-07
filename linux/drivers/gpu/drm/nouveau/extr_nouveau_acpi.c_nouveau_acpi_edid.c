
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* pdev; } ;
struct drm_connector {int connector_type; } ;
struct acpi_device {int dummy; } ;
typedef int acpi_handle ;
struct TYPE_2__ {int dev; } ;


 int ACPI_HANDLE (int *) ;
 int ACPI_VIDEO_DISPLAY_LCD ;


 int EDID_LENGTH ;
 int GFP_KERNEL ;
 int acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_video_get_edid (struct acpi_device*,int,int,void**) ;
 void* kmemdup (void*,int ,int ) ;

void *
nouveau_acpi_edid(struct drm_device *dev, struct drm_connector *connector)
{
 struct acpi_device *acpidev;
 acpi_handle handle;
 int type, ret;
 void *edid;

 switch (connector->connector_type) {
 case 129:
 case 128:
  type = ACPI_VIDEO_DISPLAY_LCD;
  break;
 default:
  return ((void*)0);
 }

 handle = ACPI_HANDLE(&dev->pdev->dev);
 if (!handle)
  return ((void*)0);

 ret = acpi_bus_get_device(handle, &acpidev);
 if (ret)
  return ((void*)0);

 ret = acpi_video_get_edid(acpidev, type, -1, &edid);
 if (ret < 0)
  return ((void*)0);

 return kmemdup(edid, EDID_LENGTH, GFP_KERNEL);
}
