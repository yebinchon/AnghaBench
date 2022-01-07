
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_device {int index; } ;
struct pci_dev {int dev; } ;


 int GFP_KERNEL ;
 int MAX_ZIP_DEVICES ;
 struct zip_device* devm_kzalloc (int *,int,int ) ;
 struct zip_device** zip_dev ;

__attribute__((used)) static struct zip_device *zip_alloc_device(struct pci_dev *pdev)
{
 struct zip_device *zip = ((void*)0);
 int idx;

 for (idx = 0; idx < MAX_ZIP_DEVICES; idx++) {
  if (!zip_dev[idx])
   break;
 }


 if (idx < MAX_ZIP_DEVICES)
  zip = devm_kzalloc(&pdev->dev, sizeof(*zip), GFP_KERNEL);

 if (!zip)
  return ((void*)0);

 zip_dev[idx] = zip;
 zip->index = idx;
 return zip;
}
