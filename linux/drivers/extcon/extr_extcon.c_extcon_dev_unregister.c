
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* groups; } ;
struct extcon_dev {int max_supported; int dev; TYPE_4__* cables; TYPE_3__ extcon_dev_type; TYPE_4__* attrs_muex; TYPE_4__* d_attrs_muex; scalar_t__* mutually_exclusive; int entry; } ;
struct TYPE_6__ {TYPE_4__* name; } ;
struct TYPE_5__ {TYPE_4__* name; } ;
struct TYPE_8__ {TYPE_2__ attr_g; TYPE_1__ attr; } ;


 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int dev_err (int *,char*,int ) ;
 int dev_name (int *) ;
 int device_unregister (int *) ;
 int extcon_dev_list_lock ;
 int get_device (int *) ;
 int kfree (TYPE_4__*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;

void extcon_dev_unregister(struct extcon_dev *edev)
{
 int index;

 if (!edev)
  return;

 mutex_lock(&extcon_dev_list_lock);
 list_del(&edev->entry);
 mutex_unlock(&extcon_dev_list_lock);

 if (IS_ERR_OR_NULL(get_device(&edev->dev))) {
  dev_err(&edev->dev, "Failed to unregister extcon_dev (%s)\n",
    dev_name(&edev->dev));
  return;
 }

 device_unregister(&edev->dev);

 if (edev->mutually_exclusive && edev->max_supported) {
  for (index = 0; edev->mutually_exclusive[index];
    index++)
   kfree(edev->d_attrs_muex[index].attr.name);
  kfree(edev->d_attrs_muex);
  kfree(edev->attrs_muex);
 }

 for (index = 0; index < edev->max_supported; index++)
  kfree(edev->cables[index].attr_g.name);

 if (edev->max_supported) {
  kfree(edev->extcon_dev_type.groups);
  kfree(edev->cables);
 }

 put_device(&edev->dev);
}
